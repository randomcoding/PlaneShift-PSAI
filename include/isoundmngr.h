/*
* isoundmngr.h, Author: Andrea Rizzi <88whacko@gmail.com>
*
* Copyright (C) 2001-2011 Atomic Blue (info@planeshift.it, http://www.atomicblue.org) 
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

#ifndef _ISOUNDMANAGER_H_
#define _ISOUNDMANAGER_H_

//====================================================================================
// Crystal Space Includes
//====================================================================================
#include <csutil/scf.h>
#include <csutil/scf_implementation.h>

//====================================================================================
// Local Includes
//====================================================================================
#include "isoundctrl.h"

//------------------------------------------------------------------------------------
// Forward Declarations
//------------------------------------------------------------------------------------
struct iMeshWrapper;
struct iView;
class  csVector3;


/** This interface defines a sound manager.
 *
 * The sound manager controls all the sound related aspects. It manages the
 * background music and the ambient sounds and it handles the music changes
 * when crossing between sectors or entrying in combat mode for example.
 *
 * The sound manager can be used to play a sound.
 */
struct iSoundManager: public virtual iBase
{
    SCF_INTERFACE(iSoundManager, 1, 2, 0);

    /**
     * The sound manager initializes by default the SoundControls with the IDs
     * in this enum. AMBIENT_SNDCTRL and MUSIC_SNDCTRL have type AMBIENT and
     * MUSIC respectively.
     */
    enum SndCtrlID
    {
        AMBIENT_SNDCTRL ,
        MUSIC_SNDCTRL,
        VOICE_SNDCTRL,
        ACTION_SNDCTRL,
        EFFECT_SNDCTRL,
        GUI_SNDCTRL
    };

    /**
     * The sound manager initialize by default the queues with the IDs specified
     * in this enum.
     */
    enum QueueID
    {
        VOICE_QUEUE
    };

    /**
     * In this enum are listed the possible state of a player.
     */
    enum CombatStance
    {
        PEACE,
        COMBAT,
        DEAD
    };

    //------------------//
    // SECTORS MANAGING //
    //------------------//

    /**
     * Load the sectors information into memory. If this method is not called
     * the other sector related methods have no effects. If one does not need
     * the sectors' features this method is not necessary.
     *
     * @return true if the sectors are loaded correctly, false otherwise.
     */
    virtual bool InitializeSectors() = 0;

    /**
     * Set the sector indicated as the current one. It is neither necessary nor
     * suggested to unload the previous active sector with UnloadActiveSector()
     * because the transition would result less smooth.
     *
     * The method uses the information about the sector to manage the music and
     * the ambient's sounds. If the sector has not been loaded properly with
     * InitializeSectors(), the method does nothing.
     *
     * @param sector the sector's name.
     */
    virtual void LoadActiveSector(const char* sector) = 0;

    /**
     * Unload the current active sector. The method stops both the music and all
     * the ambient's sounds.
     */
    virtual void UnloadActiveSector() = 0;

    /**
     * Reload all the sectors information in the memory.
     */
    virtual void ReloadSectors() = 0;

    //-------------------------//
    // SOUND CONTROLS MANAGING //
    //-------------------------//

    /**
     * Create and return a new SoundControl with the indicated ID and type. If a
     * SoundControl with the same ID already exists nothing happens. To use a
     * SoundControl with the same ID of an existing one, it must be first removed
     * with RemoveSndCtrl(iSoundControl* sndCtrl).
     *
     * Only one SoundControl of type AMBIENT or MUSIC can exist at the same time.
     * If an ambient(music) sound control already exists and the user tries to
     * create a new SoundControl with the same type, the previous ambient(music)
     * SoundControl's type becomes NORMAL.
     * 
     * @see iSoundControl::SndCtrl_Type for more information about types.
     * @param ctrlID the new SoundControl's identifier.
     * @param type the new SoundControl's type.
     * @return a pointer to the new SoundControl or a null pointer if a sound
     * controller with the same ID already exists.
     */
    virtual iSoundControl* AddSndCtrl(int ctrlID, int type) = 0;

    /**
     * Remove a SoundControl.
     * @param sndCtrl the SoundControl to be removed.
     */
    virtual void RemoveSndCtrl(iSoundControl* sndCtrl) = 0;

    /**
     * Get the SoundControl with the given ID.
     * @param ctrlID the SoundControl's ID.
     * @return the sound controller with that ID.
     */
    virtual iSoundControl* GetSndCtrl(int ctrlID) = 0;

    /**
     * Get the main SoundControl that affects the overall volume and the sound's
     * general state.
     * @return the main SoundControl.
     */
    virtual iSoundControl* GetMainSndCtrl() = 0;

    //-----------------//
    // QUEUES MANAGING //
    //-----------------//

    /**
     * Create a new sound queue with the given ID. The sounds of the queue are
     * played with first-in-first-out order and they are controlled by the given
     * SoundControl.
     *
     * If a queue with the same ID already exists nothing happens. To create a
     * new queue with its same ID one has to remove the old one with the method
     * RemoveSndQueue(int queueID).
     *
     * @param queueID the queue's ID.
     * @param sndCtrl the SoundControl of the queue's sounds.
     * @return true if the queue is created, false if another one with the same
     * ID already exists.
     */
    virtual bool AddSndQueue(int queueID, iSoundControl* sndCtrl) = 0;

    /**
     * Remove the queue with the given ID.
     * @param queueID the queue's ID.
     */
    virtual void RemoveSndQueue(int queueID) = 0;

    /**
     * Push a new sound in the queue with the given ID. The sound is played when
     * all the item pushed before it have been played.
     * 
     * @param queueID the queue's ID.
     * @param fileName the file's name of the sound to play.
     * @return true if a queue with that ID exists, false otherwise.
     */
    virtual bool PushQueueItem(int queueID, const char* fileName) = 0;

    //----------------//
    // STATE MANAGING //
    //----------------//

    /**
     * Set the new combat stance and starts the combat music if the combat toggle
     * is on. The new value should be one of the enum CombatStance.
     * @param newCombatStance the new combat state of the player.
     */
    virtual void SetCombatStance(int newCombatStance) = 0;

    /**
     * Get the current combat stance.
     * @return the combat stance.
     */
    virtual int GetCombatStance() const = 0;

    /**
     * Set the player's position and speed.
     * @param playerPosition the player's position.
     * @param playerVelocity the player's velocity.
     */
    virtual void SetPlayerMovement(csVector3 playerPosition, csVector3 playerVelocity) = 0;

    /**
     * Get the player's position.
     * @return the player's position.
     */
    virtual csVector3 GetPosition() const = 0;

    /**
     * Set the time of the day. The method works only if sectors have been
     * initialized.
     * @param newTimeOfDay the new time of the day.
     */
    virtual void SetTimeOfDay(int newTimeOfDay) = 0;

    /**
     * Get the current time of the day. The method works only if sectors have
     * been initialized.
     * @return the time of the day or -1 if the sectors are not initialized.
     */
    virtual int GetTimeOfDay() const = 0;

    /**
     * Set the weather's state.
     * @param newWeather the weather to be set.
     */
    virtual void SetWeather(int newWeather) = 0;

    /**
     * Get the weather's state.
     * @return the weather's state.
     */
    virtual int GetWeather() const = 0;

    /**
     * Sets the new state for the entity associated to the given mesh and
     * plays the start resource (if defined). If it is already playing a
     * sound, it is stopped.
     *
     * @param state the new state >= 0 for the entity. For negative value
     * the function is not defined.
     * @param mesh the mesh associated to the entity.
     * @param forceChange if it is false the entity does not change its
     * state if the new one is not defined. If it is true the entity stops
     * play any sound until a new valid state is defined.
     */
    virtual void SetEntityState(int state, iMeshWrapper* mesh, bool forceChange) = 0;

    //------------------//
    // TOGGLES MANAGING //
    //------------------//

    /**
     * Set the value of background music toggle. If set to true the background
     * music loops, otherwise it does not.
     * @param toggle true to activate the background music loop, false otherwise.
     */
    virtual void SetLoopBGMToggle(bool toggle) = 0;

    /**
     * Get the value of LoopBGMToggle.
     * @return true if the background music loop is activated, false otherwise.
     */
    virtual bool IsLoopBGMToggleOn() = 0;

    /**
     * Set the value of the combat music toggle. If set to true a change in the
     * combat stance changes the sector's music accordingly.
     * @param toggle true to allow the music change, false otherwise.
     */
    virtual void SetCombatMusicToggle(bool toggle) = 0;

    /**
     * Get the value of the combat music toggle.
     * @return true if the music change with the combat stance, false otherwise.
     */
    virtual bool IsCombatMusicToggleOn() = 0;

    /**
     * Set the value of the listener on camera toggle. If set to true the
     * listener takes the camera's position, otherwise the player's one.
     * @param toggle true to place the listener on the camera, false otherwise.
     */
    virtual void SetListenerOnCameraToggle(bool toggle) = 0;

    /**
     * Get the value of the listener on camera toggle.
     * @return true if the listener is placed on the camera, false otherwise.
     */
    virtual bool IsListenerOnCameraToggleOn() = 0;

    /**
     * Set the value of the chat toggle needed to keep track of the chat's sound state.
     */
    virtual void SetChatToggle(bool toggle) = 0;

    /**
     * Get the chat toggle value.
     */
    virtual bool IsChatToggleOn() = 0;

    //------------//
    // PLAY SOUND //
    //------------//

    /**
     * Check if the given sound ID exists.
     * @param soundID the sound ID to check.
     */
    virtual bool IsSoundValid(uint soundID) const = 0;

    /**
     * Play a 2D sound and return the ID of the played sound.
     * @param fileName the name of the file where the sound is stored.
     * @param loop true if the sound have to loop, false otherwise.
     * @param ctrl the SoundControl that handle the sound.
     * @return 0 if the sound cannot be played, its ID otherwise.
     */
    virtual uint PlaySound(const char* fileName, bool loop, iSoundControl* &ctrl) = 0;

    /**
     * Play a 3D sound and return the ID of the played sound.
     * @param fileName the name of the file where the sound is stored.
     * @param loop true if the sound have to loop, false otherwise.
     * @param ctrl the SoundControl that handle the sound.
     * @param pos the position of the sound source.
     * @param dir the direction of the sound.
     * @param minDist the minimum distance at which the player can hear it.
     * @param maxDist the maximum distance at which the player can hear it.
     * @return 0 if the sound cannot be played, its ID otherwise.
     */
    virtual uint PlaySound(const char* fileName, bool loop, iSoundControl* &ctrl, csVector3 pos, csVector3 dir, float minDist, float maxDist) = 0;

    /**
     * This method is used to play the song given in the XML musical sheet.
     *
     * @param musicalSheet the sheet to play.
     * @param instrument the name of the instrument the player uses to play.
     * @param errorRate the probability (0 <= errorRate <= 1) that the player
     * play wrongly a note.
     * @param ctrl the SoundControl that handle the sound.
     * @param pos the position of the sound source.
     * @param dir the direction of the sound.
     * @return 0 if the sound cannot be played, its ID otherwise.
     */
    virtual uint PlaySong(csRef<iDocument> musicalSheet, const char* instrument, float errorRate,
        iSoundControl* ctrl, csVector3 pos, csVector3 dir) = 0;

    /**
     * Stop a sound with the given ID.
     * @param soundID the ID of the sound returned by PlaySound.
     * @return true if a sound with that name exists, false otherwise.
     */
    virtual bool StopSound(uint soundID) = 0;

    /**
     * Set the sound source position.
     * @param soundID the ID of the sound returned by PlaySound.
     * @param position the new position of the sound source.
     * @return true if a sound with that ID exists, false otherwise.
     */
    virtual bool SetSoundSource(uint soundID, csVector3 position) = 0;

    //--------//
    // UPDATE //
    //--------//

    /**
     * Update the sound manager. Update all non event based things.
     */
    virtual void Update() = 0;

    /**
     * Update the position of the listener. If the listener on camera toggle
     * is on, the listener's position is set on the camera otherwise on the
     * player's position.
     *
     * @param the view of the camera.
     */
    virtual void UpdateListener(iView* view) = 0;
};

#endif // _ISOUNDMANAGER_H_
