/*
 * Author: Andrew Robberts
 *
 * Copyright (C) 2003 Atomic Blue (info@planeshift.it, http://www.atomicblue.org)
 *
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation (version 2 of the License)
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 */

#ifndef PS_EFFECT_OBJ_TRAIL_HEADER
#define PS_EFFECT_OBJ_TRAIL_HEADER

#include "pseffectobj.h"
#include <imesh/genmesh.h>
#include <csgeom/spline.h>

class psEffect2DRenderer;

class psEffectObjTrail : public psEffectObj
{
public:
    struct MeshAnimControl : public scfImplementation1<MeshAnimControl, iGenMeshAnimationControl>
    {
    private:
        psEffectObjTrail* parent;
                        
      public:
        // genmesh animation control
        bool AnimatesVertices() const { return true; }
        bool AnimatesTexels() const { return false; }
        bool AnimatesNormals() const { return false; }
        bool AnimatesColors()const { return true; }
        bool AnimatesBBoxRadius () const { return false; }

        MeshAnimControl ( psEffectObjTrail* parent ) : scfImplementationType (this)
        {
            this->parent = parent;
        }
        virtual ~MeshAnimControl ()
        {
            parent = 0;
        }
        
        void Update(csTicks /*current*/, int /*num_verts*/, uint32 /*version_id*/)
        {
        }

        const csBox3& UpdateBoundingBox (csTicks /*current*/, uint32 /*version_id*/, const csBox3& bbox) { return bbox; }
        const float UpdateRadius (csTicks /*current*/, uint32 /*version_id*/, const float radius) { return radius; }
        const csBox3* UpdateBoundingBoxes (csTicks /*current*/, uint32 /*version_id*/) { return nullptr; }
        const csVector3* UpdateVertices(csTicks current, const csVector3* verts, int num_verts, uint32 version_id);
        const csVector2* UpdateTexels(csTicks /*current*/, const csVector2* texels,
                                      int /*num_texels*/, uint32 /*version_id*/)
        {
            return texels;
        }
        const csVector3* UpdateNormals(csTicks /*current*/, const csVector3* normals,
                                       int /*num_normals*/, uint32 /*version_id*/)
        {
            return normals;
        }
        const csColor4* UpdateColors(csTicks current, const csColor4* colors, int num_colors, uint32 version_id);        
    };
    csRef<MeshAnimControl> meshControl;
    friend struct MeshAnimControl;
          
    psEffectObjTrail(iView *parentView, psEffect2DRenderer * renderer2d);
    ~psEffectObjTrail();

    // inheritted function overloads
    bool Load(iDocumentNode *node, iLoaderContext* ldr_context);
    bool Render(const csVector3 &up);
    bool Update(csTicks elapsed);
    psEffectObj *Clone() const;


private:

    /** performs the post setup (after the effect obj has been loaded).
     *  Things like create mesh factory, etc are initialized here.
     */
    bool PostSetup();

    csRef<iGeneralMeshState> genState;
    
    int segments;

    csVector3 * vert;
    csColor4 * colour;
    bool * missingUpdate;

    int currSegment;
    bool setMesh;

    float updateLen;
    float updateTotal;
    float updateLeft;

    csCatmullRomSpline * spline[2];

    float alpha;

    bool useMid;
};

#endif
