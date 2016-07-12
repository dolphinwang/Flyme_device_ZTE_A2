.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;
.super Landroid/os/Handler;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatSwitchHandler"
.end annotation


# static fields
.field private static final EVENT_CDMA_RADIO_OFF:I = 0x6a

.field private static final EVENT_CDMA_RADIO_ON:I = 0x69

.field private static final EVENT_CHECK_RADIO_CHANGE_DONE:I = 0x6d

.field private static final EVENT_CONFIG_EVDO_MODE:I = 0x66

.field private static final EVENT_ECTMODE_CHANGED:I = 0x6e

.field private static final EVENT_LTE_RADIO_OFF:I = 0x68

.field private static final EVENT_LTE_RADIO_ON:I = 0x67

.field private static final EVENT_SWITCH_ACTIVE_PHONE:I = 0x6c

.field private static final EVENT_SWITCH_SVLTE_MODE:I = 0x65

.field private static final EVENT_SWITCH_SVLTE_MODE_DONE:I = 0x6b


# instance fields
.field private mByEngineerMode:Z

.field private mCdmaRadioChanged:Z

.field private mForceSwitch:Z

.field private mLteRadioChanged:Z

.field private mNeedAllRadioChange:Z

.field private mRecordPriority:I

.field private mResponseMessage:Landroid/os/Message;

.field private mRoamingChanged:Z

.field private mSvlteRatChanged:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 1156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1157
    return-void
.end method

.method private isEnableOrDisable4GSwitch()Z
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerRadioOnOff()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1166
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRadioOnOff, mRecordPriority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1167
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1214
    :cond_1
    :goto_0
    return v0

    .line 1171
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRadioOnOff, lteon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cdmaon= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1174
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1175
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_4

    .line 1176
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1178
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x68

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1179
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_1

    .line 1180
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1196
    :cond_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_7

    .line 1197
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1199
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6a

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1200
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_1

    .line 1201
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    goto/16 :goto_0

    .line 1185
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_3

    .line 1186
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1188
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x67

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1190
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v2, v3, :cond_3

    goto/16 :goto_0

    .line 1204
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v2, v3, :cond_1

    :cond_6
    move v0, v1

    .line 1214
    goto/16 :goto_0

    .line 1207
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_6

    .line 1208
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1210
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x69

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public doSwitch(ZLandroid/os/Message;I)V
    .locals 8
    .param p1, "forceSwitch"    # Z
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "recordPriority"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1218
    iput p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    .line 1219
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1220
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1221
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1222
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1223
    .local v2, "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v2, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1225
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1229
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1230
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doSwitch] mNewRadioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNewSvlteRatMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNewRoamingMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1233
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 1234
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doSwitch] mResponseMessage= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1239
    :goto_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z
    invoke-static {v3, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1240
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z
    invoke-static {v3, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z

    .line 1241
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doSwitch] Flight mode has no power off md case, only switch phone mBlockByRadioPowerOff= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1243
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    .line 1244
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V
    invoke-static {v3, v7, v6, v6, p3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V

    .line 1255
    :cond_2
    :goto_2
    return-void

    .line 1236
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v4, "[doSwitch] mResponseMessage= null"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    goto :goto_1

    .line 1248
    :cond_4
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mForceSwitch:Z

    .line 1249
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    .line 1251
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1252
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1253
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->switchRat()V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1277
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1280
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_CONFIG_EVDO_MODE.config eHPRD"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v1, v2, :cond_2

    .line 1283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v2, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1288
    :cond_2
    const/16 v1, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1293
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_SWITCH_SVLTE_MODE."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingModeForModeController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2102(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_3

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1360
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setStkSwitchMode(I)V

    goto/16 :goto_0

    .line 1301
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1303
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1310
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v7

    const/16 v8, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_2

    .line 1316
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v9

    .line 1317
    .local v9, "cardType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v12

    .line 1318
    .local v12, "hasCdmaApp":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z
    invoke-static {v1, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)Z

    move-result v13

    .line 1319
    .local v13, "hasUsimApp":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v12, :cond_6

    if-nez v9, :cond_9

    .line 1321
    :cond_6
    if-eqz v13, :cond_7

    .line 1322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "cardType: CDMA CSIM, handled by GMSS"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_2

    .line 1330
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "cardType: CDMA UIM or NONE"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1331
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1341
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v7

    const/16 v8, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_2

    .line 1350
    :cond_9
    if-eqz v13, :cond_a

    .line 1351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "cardType: USIM"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1356
    :goto_3
    const/16 v1, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 1353
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "cardType: SIM"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    goto :goto_3

    .line 1363
    .end local v9    # "cardType":I
    .end local v12    # "hasCdmaApp":Z
    .end local v13    # "hasUsimApp":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setStkSwitchMode(I)V

    goto/16 :goto_0

    .line 1368
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_SWITCH_ACTIVE_PHONE."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    .line 1371
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->registerRadioOnOff()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1372
    const/16 v1, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1375
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mSvlteRatChanged:Z

    .line 1376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-eq v1, v2, :cond_10

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRoamingChanged:Z

    .line 1377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v18

    .line 1378
    .local v18, "recordPreMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mByEngineerMode:Z

    if-nez v1, :cond_d

    .line 1379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2602(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)I

    .line 1383
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update values. mSvlteRatMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRoamingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "Notify mode changed."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1387
    move-object/from16 v17, v18

    .line 1388
    .local v17, "preMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v11

    .line 1389
    .local v11, "curMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 1390
    .local v10, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v10, :cond_11

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1392
    .local v15, "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v15, :cond_e

    .line 1393
    move-object/from16 v0, v17

    invoke-interface {v15, v0, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1390
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1375
    .end local v10    # "count":I
    .end local v11    # "curMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v14    # "i":I
    .end local v15    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    .end local v17    # "preMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v18    # "recordPreMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1376
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1397
    .restart local v18    # "recordPreMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSwitchingRadioByRatSwitch:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z

    .line 1398
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mForceSwitch:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_SWITCH_SVLTE_MODE, not in airplane mode, set radio power"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v9

    .line 1402
    .restart local v9    # "cardType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v12

    .line 1403
    .restart local v12    # "hasCdmaApp":Z
    if-nez v12, :cond_12

    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1404
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 1407
    :cond_13
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z
    invoke-static {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 1413
    .end local v9    # "cardType":I
    .end local v12    # "hasCdmaApp":Z
    .end local v18    # "recordPreMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_LTE_RADIO_OFF."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1414
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1416
    const/16 v1, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1420
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_LTE_RADIO_ON."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1421
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1423
    const/16 v1, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1427
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_CDMA_RADIO_OFF."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1428
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1430
    const/16 v1, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1434
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_CDMA_RADIO_ON."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1435
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1437
    const/16 v1, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1441
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHECK_RADIO_CHANGE_DONE. mNeedAllRadioChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCdmaRadioChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLteRadioChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1445
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    if-eqz v1, :cond_14

    .line 1446
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    if-eqz v1, :cond_0

    .line 1447
    const/16 v1, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1450
    :cond_14
    const/16 v1, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1455
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_SWITCH_SVLTE_MODE_DONE."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1456
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1457
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1458
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    move-object/from16 v16, v0

    .line 1461
    .local v16, "message":Landroid/os/Message;
    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1462
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 1463
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    .line 1466
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    move/from16 v19, v0

    .line 1467
    .local v19, "recordPriority":I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    .line 1468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mSvlteRatChanged:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRoamingChanged:Z

    move/from16 v0, v19

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V

    goto/16 :goto_0

    .line 1471
    .end local v16    # "message":Landroid/os/Message;
    .end local v19    # "recordPriority":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "EVENT_ECTMODE_CHANGED."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 1474
    .restart local v10    # "count":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    if-ge v14, v10, :cond_17

    .line 1475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1476
    .restart local v15    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v15, :cond_16

    .line 1477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    invoke-interface {v15, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1474
    :cond_16
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1481
    .end local v10    # "count":I
    .end local v14    # "i":I
    .end local v15    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    :cond_17
    const/16 v1, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public switchRat()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    const/4 v0, 0x1

    .line 1257
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v2, "switchRat begin"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSwitchingRadioByRatSwitch:Z
    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z

    .line 1259
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_2

    .line 1261
    .local v0, "isGmssOn":Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    .line 1263
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1273
    :goto_1
    return-void

    .line 1259
    .end local v0    # "isGmssOn":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1266
    .restart local v0    # "isGmssOn":Z
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_4

    .line 1268
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1270
    :cond_4
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
