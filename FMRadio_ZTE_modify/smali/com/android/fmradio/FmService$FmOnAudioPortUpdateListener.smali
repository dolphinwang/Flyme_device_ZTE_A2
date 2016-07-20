.class Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;
.super Ljava/lang/Object;
.source "FmService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmOnAudioPortUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method private constructor <init>(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;)V
    .locals 0

    .prologue
    .line 1803
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;-><init>(Lcom/android/fmradio/FmService;)V

    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 9
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1820
    const-string v4, "FmService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onAudioPatchListUpdate, mAudioPatch = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$26(Lcom/android/fmradio/FmService;)Landroid/media/AudioPatch;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1821
    const-string v8, ", mIsRender = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsRender:Z
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$27(Lcom/android/fmradio/FmService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1820
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->isBluetoothHeadsetInUse()Z

    move-result v4

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$28(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-eq v4, v7, :cond_1

    .line 1823
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$28(Lcom/android/fmradio/FmService;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v7, v4}, Lcom/android/fmradio/FmService;->access$29(Lcom/android/fmradio/FmService;Z)V

    .line 1827
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$28(Lcom/android/fmradio/FmService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1828
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    invoke-static {v4, v5}, Lcom/android/fmradio/FmService;->access$30(Lcom/android/fmradio/FmService;Z)V

    .line 1830
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 1831
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "callback_flag"

    .line 1832
    const/16 v7, 0x22

    .line 1831
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    const-string v4, "key_bt_state"

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPrevBtHeadsetState:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$28(Lcom/android/fmradio/FmService;)Z

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1834
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v4, v0}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 1836
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v4

    sget v7, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-eq v4, v7, :cond_4

    .line 1837
    const-string v4, "FmService"

    const-string v5, "onAudioPatchListUpdate, not power up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v4, v6

    .line 1823
    goto :goto_0

    .line 1841
    :cond_4
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$31(Lcom/android/fmradio/FmService;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1842
    const-string v4, "FmService"

    const-string v5, "onAudioPatchListUpdate no audio focus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1846
    :cond_5
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsPlaying192KHz:Z
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$32(Lcom/android/fmradio/FmService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1847
    const-string v4, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onAudioPatchListUpdate inPlaying192Khz "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsRender:Z
    invoke-static {v6}, Lcom/android/fmradio/FmService;->access$27(Lcom/android/fmradio/FmService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->releaseAudioPatch()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$33(Lcom/android/fmradio/FmService;)V

    .line 1849
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsRender:Z
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$27(Lcom/android/fmradio/FmService;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1850
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->startRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$34(Lcom/android/fmradio/FmService;)V

    goto :goto_1

    .line 1855
    :cond_6
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$26(Lcom/android/fmradio/FmService;)Landroid/media/AudioPatch;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1856
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v3, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$3(Lcom/android/fmradio/FmService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    .line 1860
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToDeviceRemoved(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$35(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToBt(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$36(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1861
    :cond_7
    const-string v4, "FmService"

    const-string v5, "onAudioPatchListUpdate reinit for BT or WFD connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->notifySpeakerModeChange()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$37(Lcom/android/fmradio/FmService;)V

    .line 1863
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1864
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->releaseAudioPatch()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$33(Lcom/android/fmradio/FmService;)V

    .line 1865
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->startRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$34(Lcom/android/fmradio/FmService;)V

    goto/16 :goto_1

    .line 1868
    :cond_8
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToEarphone(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$39(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1869
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1870
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isOutputDeviceChanged(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$40(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1871
    const-string v4, "FmService"

    const-string v6, "DEBUG outputDeviceChanged: re-create audio patch"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->releaseAudioPatch()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$33(Lcom/android/fmradio/FmService;)V

    .line 1873
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->createAudioPatchByEarphone()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$41(Lcom/android/fmradio/FmService;)V

    .line 1874
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    invoke-static {v4, v5}, Lcom/android/fmradio/FmService;->access$30(Lcom/android/fmradio/FmService;Z)V

    .line 1875
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->notifySpeakerModeChange()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$37(Lcom/android/fmradio/FmService;)V

    .line 1920
    .end local v3    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_9
    :goto_2
    const-string v4, "FmService"

    const-string v5, "onAudioPatchListUpdate: exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1877
    .restart local v3    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_a
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToSpeaker(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$42(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1878
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1879
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isOutputDeviceChanged(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$40(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1880
    const-string v4, "FmService"

    const-string v5, "DEBUG outputDeviceChanged: re-create audio patch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->releaseAudioPatch()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$33(Lcom/android/fmradio/FmService;)V

    .line 1882
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->createAudioPatchBySpeaker()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$43(Lcom/android/fmradio/FmService;)V

    .line 1883
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    invoke-static {v4, v6}, Lcom/android/fmradio/FmService;->access$30(Lcom/android/fmradio/FmService;Z)V

    .line 1884
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->notifySpeakerModeChange()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$37(Lcom/android/fmradio/FmService;)V

    goto :goto_2

    .line 1886
    :cond_b
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchContainSpeakerAndEarphone(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$44(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1890
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1892
    :try_start_0
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$26(Lcom/android/fmradio/FmService;)Landroid/media/AudioPatch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v1

    .line 1893
    .local v1, "currentSinks":[Landroid/media/AudioPortConfig;
    array-length v4, v1

    if-ne v4, v6, :cond_9

    .line 1894
    const-string v4, "FmService"

    const-string v5, "DEBUG create fm->speaker+earphone patch to avoid noise"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->releaseAudioPatch()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$33(Lcom/android/fmradio/FmService;)V

    .line 1896
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->createAudioPatchBySpeakerAndEarphone()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$45(Lcom/android/fmradio/FmService;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1898
    .end local v1    # "currentSinks":[Landroid/media/AudioPortConfig;
    :catch_0
    move-exception v2

    .line 1899
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "FmService"

    const-string v5, "mAudioPatch released."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1902
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_c
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsRender:Z
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$27(Lcom/android/fmradio/FmService;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1903
    const-string v4, "FmService"

    const-string v5, "onAudioPatchListUpdate2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .restart local v3    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$3(Lcom/android/fmradio/FmService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    .line 1906
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToEarphone(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$39(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1907
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1908
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopAudioTrack()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$46(Lcom/android/fmradio/FmService;)V

    .line 1909
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->createAudioPatchByEarphone()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$41(Lcom/android/fmradio/FmService;)V

    goto/16 :goto_2

    .line 1910
    :cond_d
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToSpeaker(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$42(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1911
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1912
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopAudioTrack()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$46(Lcom/android/fmradio/FmService;)V

    .line 1913
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->createAudioPatchBySpeaker()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$43(Lcom/android/fmradio/FmService;)V

    goto/16 :goto_2

    .line 1914
    :cond_e
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->isPatchMixerToDeviceRemoved(Ljava/util/ArrayList;)Z
    invoke-static {v4, v3}, Lcom/android/fmradio/FmService;->access$35(Lcom/android/fmradio/FmService;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1915
    const-string v4, "FmService"

    const-string v5, "onAudioPatchListUpdate: native removed patches, restart render"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->stopRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$38(Lcom/android/fmradio/FmService;)V

    .line 1917
    iget-object v4, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->startRender()V
    invoke-static {v4}, Lcom/android/fmradio/FmService;->access$34(Lcom/android/fmradio/FmService;)V

    goto/16 :goto_2
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 0
    .param p1, "portList"    # [Landroid/media/AudioPort;

    .prologue
    .line 1811
    return-void
.end method

.method public onServiceDied()V
    .locals 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/fmradio/FmService$FmOnAudioPortUpdateListener;->this$0:Lcom/android/fmradio/FmService;

    const/4 v1, 0x0

    # invokes: Lcom/android/fmradio/FmService;->enableFmAudio(Z)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FmService;->access$47(Lcom/android/fmradio/FmService;Z)V

    .line 1929
    return-void
.end method
