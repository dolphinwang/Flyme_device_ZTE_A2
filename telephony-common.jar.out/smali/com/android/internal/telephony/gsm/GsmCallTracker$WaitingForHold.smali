.class Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingForHold"
.end annotation


# instance fields
.field private mClirMode:I

.field private mDialString:Ljava/lang/String;

.field private mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mWaiting:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 153
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 154
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 155
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->handleOperation()Z

    move-result v0

    return v0
.end method

.method private handleOperation()Z
    .locals 10

    .prologue
    const/16 v9, 0x16

    .line 192
    const-string v4, "GsmCallTracker"

    const-string v5, "handleWaitingOperation begin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    if-eqz v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v5

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v3

    .line 198
    .local v3, "serviceCategory":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setEccServiceCategory(I)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 207
    .end local v3    # "serviceCategory":I
    :goto_0
    const-string v4, "ro.mtk_vt3g324m_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    new-instance v5, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-direct {v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .line 210
    const-string v4, "GsmCallTracker"

    const-string v5, "handleOperation new GsmVTProvider"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mVTProvider:Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getInterface()Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v1

    .line 214
    .local v1, "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    if-eqz v1, :cond_0

    .line 215
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;-><init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V

    .line 217
    .local v2, "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    const-string v4, "GsmCallTracker"

    const-string v5, "handleOperation new GsmVideoCallProviderWrapper"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "gsmVideoCallProvider":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .end local v2    # "gsmVideoCallProviderWrapper":Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 227
    const-string v4, "GsmCallTracker"

    const-string v5, "handleWaitingOperation end"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v4, 0x1

    .line 230
    :goto_2
    return v4

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "GsmCallTracker"

    const-string v5, "handleOperation new GsmVideoCallProviderWrapper failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method isWaiting()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    const-string v0, "GsmCallTracker"

    const-string v1, "Reset WaitingForHoldRequest variables"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 181
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 182
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 183
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 184
    return-void
.end method

.method set()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 167
    return-void
.end method

.method public set(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 1
    .param p1, "dialSting"    # Ljava/lang/String;
    .param p2, "clir"    # I
    .param p3, "uusinfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 172
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 173
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 174
    return-void
.end method
