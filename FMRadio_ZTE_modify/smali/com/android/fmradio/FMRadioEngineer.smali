.class public Lcom/android/fmradio/FMRadioEngineer;
.super Landroid/app/Activity;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Lcom/android/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
.implements Lcom/android/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;


# static fields
.field private static final REFS_NAME:Ljava/lang/String; = "FMRecord"

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final START_PLAY_TIME:Ljava/lang/String; = "startPlayTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field public static final STATION0:I = 0x36e

.field public static final STATION1:I = 0x37d

.field public static final STATION2:I = 0x3a2

.field public static final STATION3:I = 0x3b6

.field public static final STATION4:I = 0x3dd

.field public static final STATION5:I = 0x3e5

.field private static final TAG:Ljava/lang/String; = "FmRx/FMRadioEngineer"

.field private static final TAG_NO_ANTENNA:Ljava/lang/String; = "NoAntenna"

.field private static final TAG_SAVE_RECORDINGD:Ljava/lang/String; = "SaveRecording"

.field private static final TAG_SEARCH:Ljava/lang/String; = "Search"


# instance fields
.field private btnFail:Landroid/widget/Button;

.field private btnPass:Landroid/widget/Button;

.field private btnSTATION0:Landroid/widget/Button;

.field private btnSTATION1:Landroid/widget/Button;

.field private btnSTATION2:Landroid/widget/Button;

.field private btnSTATION3:Landroid/widget/Button;

.field private btnSTATION4:Landroid/widget/Button;

.field private btnSTATION5:Landroid/widget/Button;

.field private mAnimImage:Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonDecrease:Landroid/widget/ImageButton;

.field private mButtonIncrease:Landroid/widget/ImageButton;

.field private mButtonNextStation:Landroid/widget/ImageButton;

.field private mButtonPlayback:Landroid/widget/ImageButton;

.field private mButtonPrevStation:Landroid/widget/ImageButton;

.field private mButtonRecord:Landroid/widget/ImageButton;

.field private mButtonStop:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mFmListener:Lcom/android/fmradio/FmListener;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityForeground:Z

.field private mIsInRecordingMode:Z

.field private mIsNeedDisablePower:Z

.field private mIsNeedShowNoAntennaDlg:Z

.field private mIsNeedShowRecordDlg:Z

.field private mIsNeedShowSearchDlg:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mMenuItemChannelList:Landroid/view/MenuItem;

.field private mMenuItemOverflow:Landroid/view/MenuItem;

.field private mMenuItemPower:Landroid/view/MenuItem;

.field private mNeedTuneto:Z

.field private mPlayStartTime:J

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPrevRecorderState:I

.field private mRLRecordInfo:Landroid/widget/RelativeLayout;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private mService:Lcom/android/fmradio/FmService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextFm:Landroid/widget/TextView;

.field private mTextMHz:Landroid/widget/TextView;

.field private mTextRds:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mTextStationValue:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTxtRecInfoLeft:Landroid/widget/TextView;

.field private mTxtRecInfoRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTextStationName:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTextStationValue:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTextRds:Landroid/widget/TextView;

    .line 114
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTextFm:Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTextMHz:Landroid/widget/TextView;

    .line 117
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 118
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 120
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 121
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 122
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 123
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 124
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonRecord:Landroid/widget/ImageButton;

    .line 125
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonStop:Landroid/widget/ImageButton;

    .line 126
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 127
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mAnimation:Landroid/view/animation/Animation;

    .line 128
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mAnimImage:Landroid/widget/ImageView;

    .line 131
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 135
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 136
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mMenuItemPower:Landroid/view/MenuItem;

    .line 137
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 140
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    .line 152
    iput-wide v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordStartTime:J

    .line 153
    iput-wide v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mPlayStartTime:J

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    .line 155
    const/16 v0, 0x36e

    iput v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 156
    iput v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    .line 159
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    .line 160
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    .line 161
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 162
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 163
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mAudioManager:Landroid/media/AudioManager;

    .line 172
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION0:Landroid/widget/Button;

    .line 173
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION1:Landroid/widget/Button;

    .line 174
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION2:Landroid/widget/Button;

    .line 175
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION3:Landroid/widget/Button;

    .line 176
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION4:Landroid/widget/Button;

    .line 177
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION5:Landroid/widget/Button;

    .line 179
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnPass:Landroid/widget/Button;

    .line 180
    iput-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->btnFail:Landroid/widget/Button;

    .line 185
    new-instance v0, Lcom/android/fmradio/FMRadioEngineer$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FMRadioEngineer$1;-><init>(Lcom/android/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mFmListener:Lcom/android/fmradio/FmListener;

    .line 204
    new-instance v0, Lcom/android/fmradio/FMRadioEngineer$2;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FMRadioEngineer$2;-><init>(Lcom/android/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lcom/android/fmradio/FMRadioEngineer$3;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FMRadioEngineer$3;-><init>(Lcom/android/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 453
    new-instance v0, Lcom/android/fmradio/FMRadioEngineer$4;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FMRadioEngineer$4;-><init>(Lcom/android/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/android/fmradio/FMRadioEngineer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 1110
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/android/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 1534
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/android/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    return-void
.end method

.method static synthetic access$12(Lcom/android/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/android/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$14(Lcom/android/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    return-void
.end method

.method static synthetic access$15(Lcom/android/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    return-void
.end method

.method static synthetic access$16(Lcom/android/fmradio/FMRadioEngineer;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$17(Lcom/android/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->dismissSearchDialog()V

    return-void
.end method

.method static synthetic access$19(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->enterChannelList()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->exitService()V

    return-void
.end method

.method static synthetic access$20(Lcom/android/fmradio/FMRadioEngineer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->showRds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/android/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->updateRecordingState(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/android/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->updateRecorderError(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/android/fmradio/FMRadioEngineer;Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    return-void
.end method

.method static synthetic access$24(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmListener;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mFmListener:Lcom/android/fmradio/FmListener;

    return-object v0
.end method

.method static synthetic access$25(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->powerUpFm()V

    return-void
.end method

.method static synthetic access$26(Lcom/android/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    return v0
.end method

.method static synthetic access$27(Lcom/android/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    return v0
.end method

.method static synthetic access$28(Lcom/android/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    return-void
.end method

.method static synthetic access$29(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1599
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->updateCurrentStation()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    return-object v0
.end method

.method static synthetic access$30(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->updateMenuStatus()V

    return-void
.end method

.method static synthetic access$31(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1617
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->updateDialogStatus()V

    return-void
.end method

.method static synthetic access$32(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->updateRds()V

    return-void
.end method

.method static synthetic access$33(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->restoreRecorderState()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->refreshRecordNotIdle()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->refreshTimeText()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$7(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->stopAnimation()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/fmradio/FMRadioEngineer;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$9(Lcom/android/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    return v0
.end method

.method private changeRecordingMode(Z)V
    .locals 3
    .param p1, "recordingMode"    # Z

    .prologue
    .line 1251
    const-string v0, "FmRx/FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeRecordingMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-ne v0, p1, :cond_1

    .line 1253
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "FM already "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "in"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1254
    const-string v2, "recording mode!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :goto_1
    return-void

    .line 1253
    :cond_0
    const-string v0, "NOT in"

    goto :goto_0

    .line 1257
    :cond_1
    iput-boolean p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 1258
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FmService;->setRecordingModeAsync(Z)V

    .line 1259
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->switchRecordLayout(Z)V

    goto :goto_1
.end method

.method private checkNoAntennaDialogInOnResume()V
    .locals 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "Need to show no antenna dialog for plug out earphone in onPause state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z

    .line 784
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->showNoAntennaDialog()V

    .line 786
    :cond_0
    return-void
.end method

.method private dismissNoAntennaDialog()Z
    .locals 3

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1536
    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1535
    check-cast v0, Lcom/android/fmradio/dialogs/NoAntennaDialog;

    .line 1537
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 1538
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->dismissAllowingStateLoss()V

    .line 1539
    const/4 v1, 0x1

    .line 1541
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissSaveRecordingDialog()V
    .locals 4

    .prologue
    .line 1508
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1509
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "SaveRecording"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1510
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1511
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1512
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1514
    :cond_0
    return-void
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 1497
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1498
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1497
    check-cast v0, Lcom/android/fmradio/dialogs/SearchChannelsDialog;

    .line 1499
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->dismissAllowingStateLoss()V

    .line 1502
    :cond_0
    return-void
.end method

.method private editSharedPreferences(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 641
    const-string v2, "FMRecord"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/fmradio/FMRadioEngineer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 642
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 643
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 645
    return-void
.end method

.method private enterChannelList()V
    .locals 3

    .prologue
    .line 675
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "enterChannelList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-eqz v1, :cond_0

    .line 679
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    if-eqz v1, :cond_1

    .line 680
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 681
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/fmradio/FmRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 682
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 687
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "enterChannelList. activity is background, not enter channel list."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1444
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1447
    iput-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 1450
    :cond_0
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 1451
    new-instance v1, Landroid/content/Intent;

    .line 1452
    const-class v2, Lcom/android/fmradio/FmService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1451
    invoke-virtual {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1453
    .local v0, "isSuccess":Z
    if-nez v0, :cond_1

    .line 1454
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_1
    iput-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    .line 1458
    .end local v0    # "isSuccess":Z
    :cond_2
    return-void
.end method

.method private getTimeString(I)Ljava/lang/String;
    .locals 14
    .param p1, "time"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 614
    const/16 v3, 0xe10

    .line 615
    .local v3, "oneHour":I
    div-int/lit16 v0, p1, 0xe10

    .line 616
    .local v0, "hour":I
    const/16 v2, 0x3c

    .line 617
    .local v2, "minuteSecond":I
    div-int/lit8 v8, p1, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 618
    .local v1, "minute":I
    rem-int/lit8 v4, p1, 0x3c

    .line 619
    .local v4, "second":I
    const/4 v7, 0x0

    .line 621
    .local v7, "timeString":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 622
    const-string v5, "%02d:%02d:%02d"

    .line 623
    .local v5, "timeFormatLong":Ljava/lang/String;
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 629
    .end local v5    # "timeFormatLong":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 625
    :cond_0
    const-string v6, "%02d:%02d"

    .line 626
    .local v6, "timeFormatShort":Ljava/lang/String;
    const-string v8, "%02d:%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private initUiComponent()V
    .locals 2

    .prologue
    .line 1677
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "initUIComponent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION0:Landroid/widget/Button;

    .line 1681
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION1:Landroid/widget/Button;

    .line 1682
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION2:Landroid/widget/Button;

    .line 1683
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION3:Landroid/widget/Button;

    .line 1684
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION4:Landroid/widget/Button;

    .line 1685
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION5:Landroid/widget/Button;

    .line 1687
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnFail:Landroid/widget/Button;

    .line 1688
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnPass:Landroid/widget/Button;

    .line 1693
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1524
    invoke-static {}, Lcom/android/fmradio/FmService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "sdcard":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1526
    .local v1, "unmountSDCard":Ljava/lang/String;
    const-string v2, "FmRx/FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unmount sd card file path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1528
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private powerUpFm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1084
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "start powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-direct {p0, v2}, Lcom/android/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1086
    invoke-direct {p0, v2}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1087
    invoke-direct {p0, v2}, Lcom/android/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1088
    invoke-direct {p0, v2}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1089
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1090
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    iget v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->powerUpAsync(F)V

    .line 1091
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "end powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private refreshActionMenuItem(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1152
    return-void
.end method

.method private refreshActionMenuPower(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1156
    const-string v0, "FmRx/FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshActionMenuPower enabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void
.end method

.method private refreshImageButton(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1141
    return-void
.end method

.method private refreshPlaybackIdle(Z)V
    .locals 0
    .param p1, "btnPlayBack"    # Z

    .prologue
    .line 1185
    return-void
.end method

.method private refreshPlaybacking()V
    .locals 0

    .prologue
    .line 1193
    return-void
.end method

.method private refreshPopupMenuItem(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1169
    return-void
.end method

.method private refreshRecordIdle()V
    .locals 0

    .prologue
    .line 1180
    return-void
.end method

.method private refreshRecordNotIdle()V
    .locals 0

    .prologue
    .line 1177
    return-void
.end method

.method private refreshRecording()V
    .locals 0

    .prologue
    .line 1189
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 10
    .param p1, "stateOverride"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 1291
    const/4 v2, -0x1

    .line 1293
    .local v2, "recorderState":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    .line 1294
    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->getRecorderState()I

    move-result v2

    .line 1296
    :goto_0
    const-string v5, "FmRx/FMRadioEngineer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refreshRecordingStatus: state="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    packed-switch v2, :pswitch_data_0

    .line 1344
    :pswitch_0
    const-string v4, "FmRx/FMRadioEngineer"

    const-string v5, "invalid record status"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_1
    iput v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    .line 1348
    const-string v4, "FmRx/FMRadioEngineer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshRecordingStatus.mPrevRecorderState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void

    :cond_0
    move v2, p1

    .line 1294
    goto :goto_0

    .line 1299
    :pswitch_1
    iget-object v5, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->getRecordTime()J

    move-result-wide v0

    .line 1300
    .local v0, "recordTime":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    .line 1305
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    if-ne v5, v6, :cond_1

    .line 1306
    const-string v5, "FmRx/FMRadioEngineer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "need show recorder dialog.mPrevRecorderState:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1307
    iget v7, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1306
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-boolean v5, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    if-eqz v5, :cond_2

    .line 1309
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->showSaveRecordingDialog()V

    .line 1318
    :cond_1
    :goto_2
    cmp-long v5, v0, v8

    if-lez v5, :cond_3

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/fmradio/FMRadioEngineer;->refreshPlaybackIdle(Z)V

    goto :goto_1

    .line 1311
    :cond_2
    iput-boolean v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    goto :goto_2

    .line 1318
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1324
    .end local v0    # "recordTime":J
    :pswitch_2
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->refreshRecording()V

    goto :goto_1

    .line 1329
    :pswitch_3
    iget-object v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->getRecordingName()Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, "recordingName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 1331
    const-string v3, ""

    .line 1334
    :cond_4
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->refreshPlaybacking()V

    goto :goto_1

    .line 1339
    .end local v3    # "recordingName":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->refreshRecordIdle()V

    goto :goto_1

    .line 1297
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshSoundModeVisiable()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method private refreshStationUI(I)V
    .locals 0
    .param p1, "station"    # I

    .prologue
    .line 698
    return-void
.end method

.method private refreshTimeText()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1709
    const-string v4, "FmRx/FMRadioEngineer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshTimeText:mRecordState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-boolean v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-nez v4, :cond_1

    .line 1711
    const-string v4, "FmRx/FMRadioEngineer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshTimeText:mIsInRecordingMode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 1713
    iget-object v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->stopRecordingAsync()V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    const/16 v0, 0x3e8

    .line 1721
    .local v0, "oneSecond":I
    iget v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    packed-switch v4, :pswitch_data_0

    .line 1746
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1723
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordStartTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v2, v4

    .line 1727
    .local v2, "recordTime":I
    invoke-static {}, Lcom/android/fmradio/FmService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v3

    .line 1728
    .local v3, "recordingSdcard":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/fmradio/FmUtils;->hasEnoughSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1730
    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 1732
    iget-object v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->stopRecordingAsync()V

    goto :goto_1

    .line 1738
    .end local v2    # "recordTime":I
    .end local v3    # "recordingSdcard":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/fmradio/FMRadioEngineer;->mPlayStartTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v1, v4

    .line 1741
    .local v1, "playTime":I
    goto :goto_1

    .line 1721
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerButtonClickListener()V
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1699
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1701
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1702
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1703
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnSTATION5:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnFail:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1705
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->btnPass:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    return-void
.end method

.method private restoreConfiguration()V
    .locals 4

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 704
    const-string v1, "FmRx/FMRadioEngineer"

    .line 705
    const-string v2, "Configration changes,activity restart,need to reset UI!"

    .line 704
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 707
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 721
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 710
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "mPrevRecorderState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    .line 711
    const-string v1, "mRecordState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    .line 712
    const-string v1, "mIsFreshRecordingStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    .line 714
    const-string v1, "mIsNeedShowSearchDlg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    .line 717
    const-string v1, "isInRecordingMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 718
    const-string v1, "mIsPlaying"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    .line 719
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreRecorderState()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1056
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getRecordingMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 1057
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getRecorderState()I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    .line 1061
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    if-eq v1, v2, :cond_0

    .line 1062
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    if-ne v1, v2, :cond_1

    .line 1063
    :cond_0
    const-string v1, "FMRecord"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/fmradio/FMRadioEngineer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1064
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "startRecordTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordStartTime:J

    .line 1065
    const-string v1, "startPlayTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mPlayStartTime:J

    .line 1067
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&sendemptyMessage:mRecoderStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1073
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-direct {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->switchRecordLayout(Z)V

    .line 1074
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-direct {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->changeRecordingMode(Z)V

    .line 1075
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-eqz v1, :cond_2

    .line 1076
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->refreshRecordingStatus(I)V

    .line 1078
    :cond_2
    return-void
.end method

.method private seekStation(IZ)V
    .locals 2
    .param p1, "station"    # I
    .param p2, "direction"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1130
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1131
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1132
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1133
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1134
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    .line 1137
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "isSpeaker"    # Z

    .prologue
    .line 1095
    if-eqz p1, :cond_0

    .line 1096
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "UseSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->setSpeakerPhoneOn(Z)V

    .line 1103
    :goto_0
    return-void

    .line 1099
    :cond_0
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "UseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->setSpeakerPhoneOn(Z)V

    goto :goto_0
.end method

.method private showRds(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1242
    const-string v0, "FmRx/FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioEngineer.showRds: RDS = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void
.end method

.method private showSearchDialog()V
    .locals 3

    .prologue
    .line 1488
    invoke-static {}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->newInstance()Lcom/android/fmradio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 1489
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1491
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1237
    const-string v0, "FmRx/FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioEngineer.showToast: toast = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1040
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.startAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void
.end method

.method private stopAnimation()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method private switchRecordLayout(Z)V
    .locals 2
    .param p1, "recordingMode"    # Z

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1269
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->invalidateOptionsMenu()V

    .line 1272
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1273
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1274
    if-eqz p1, :cond_0

    const v1, 0x7f090070

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1283
    return-void

    .line 1275
    :cond_0
    const v1, 0x7f09004e

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 2
    .param p1, "station"    # I

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1112
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1113
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1114
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1115
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->tuneStationAsync(F)V

    .line 1116
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1119
    :cond_0
    return-void
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 1603
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getFrequency()I

    move-result v0

    .line 1604
    .local v0, "freq":I
    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    iget v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    if-eq v1, v0, :cond_0

    .line 1606
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iput v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 1608
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1609
    iget v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->refreshStationUI(I)V

    .line 1612
    :cond_0
    return-void
.end method

.method private updateDialogStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1618
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus.mIsNeedShowSearchDlg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isScanning()Z

    move-result v0

    .line 1622
    .local v0, "isScan":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    if-eqz v1, :cond_0

    .line 1623
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus: show search dialog. isScan is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iput-boolean v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    .line 1625
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->showSearchDialog()V

    .line 1629
    :cond_0
    iget-boolean v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    if-eqz v1, :cond_1

    .line 1630
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus.resume recordDlg.mPrevRecorderState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1631
    iget v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1630
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->showSaveRecordingDialog()V

    .line 1633
    iput-boolean v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    .line 1645
    :cond_1
    return-void
.end method

.method private updateMenuStatus()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1651
    sget v7, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v8, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v8}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v8

    if-ne v7, v8, :cond_3

    move v1, v5

    .line 1652
    .local v1, "isPlaying":Z
    :goto_0
    sget v7, Lcom/android/fmradio/FmService;->DURING_POWER_UP:I

    iget-object v8, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v8}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v8

    if-ne v7, v8, :cond_4

    move v2, v5

    .line 1653
    .local v2, "isPoweruping":Z
    :goto_1
    iget-object v7, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->isSeeking()Z

    move-result v4

    .line 1654
    .local v4, "isSeeking":Z
    iget-object v7, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->isScanning()Z

    move-result v3

    .line 1656
    .local v3, "isScan":Z
    const-string v7, "FmRx/FMRadioEngineer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateMenuStatus.isSeeking:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    move v0, v6

    .line 1660
    .local v0, "fmStatus":Z
    :goto_2
    if-eqz v0, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Lcom/android/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1661
    if-eqz v0, :cond_7

    move v7, v6

    :goto_4
    invoke-direct {p0, v7}, Lcom/android/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1662
    if-eqz v0, :cond_8

    move v7, v6

    :goto_5
    invoke-direct {p0, v7}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1665
    const-string v7, "FmRx/FMRadioEngineer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateMenuStatus.mIsNeedDisablePower: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    if-eqz v0, :cond_9

    :cond_0
    :goto_6
    invoke-direct {p0, v6}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1670
    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    .line 1671
    :cond_1
    const-string v5, "FmRx/FMRadioEngineer"

    const-string v6, "updateMenuStatus. it is seeking or poweruping"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1674
    :cond_2
    return-void

    .end local v0    # "fmStatus":Z
    .end local v1    # "isPlaying":Z
    .end local v2    # "isPoweruping":Z
    .end local v3    # "isScan":Z
    .end local v4    # "isSeeking":Z
    :cond_3
    move v1, v6

    .line 1651
    goto :goto_0

    .restart local v1    # "isPlaying":Z
    :cond_4
    move v2, v6

    .line 1652
    goto :goto_1

    .restart local v2    # "isPoweruping":Z
    .restart local v3    # "isScan":Z
    .restart local v4    # "isSeeking":Z
    :cond_5
    move v0, v5

    .line 1657
    goto :goto_2

    .restart local v0    # "fmStatus":Z
    :cond_6
    move v7, v1

    .line 1660
    goto :goto_3

    :cond_7
    move v7, v1

    .line 1661
    goto :goto_4

    :cond_8
    move v7, v1

    .line 1662
    goto :goto_5

    .line 1667
    :cond_9
    if-nez v1, :cond_a

    iget-boolean v7, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    if-nez v7, :cond_0

    :cond_a
    move v6, v5

    goto :goto_6
.end method

.method private updateRds()V
    .locals 4

    .prologue
    .line 1585
    iget-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 1586
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1587
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key_ps_info"

    iget-object v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->getPs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v2, "key_rt_info"

    iget-object v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->getRtText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 1590
    const v3, 0x100011

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1591
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1592
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1594
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateRecorderError(I)V
    .locals 5
    .param p1, "errorType"    # I

    .prologue
    const v4, 0x7f090056

    .line 576
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateRecorderError.errorType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v0, 0x0

    .line 580
    .local v0, "showString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->refreshRecordIdle()V

    .line 581
    packed-switch p1, :pswitch_data_0

    .line 599
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "invalid recorder error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 604
    return-void

    .line 583
    :pswitch_0
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    goto :goto_0

    .line 587
    :pswitch_1
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    goto :goto_0

    .line 591
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    goto :goto_0

    .line 595
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateRecordingState(I)V
    .locals 3
    .param p1, "recorderState"    # I

    .prologue
    const/16 v2, 0x65

    .line 545
    iput p1, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    .line 546
    invoke-direct {p0, p1}, Lcom/android/fmradio/FMRadioEngineer;->refreshRecordingStatus(I)V

    .line 548
    packed-switch p1, :pswitch_data_0

    .line 565
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    :goto_0
    return-void

    .line 550
    :pswitch_0
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 551
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "updateRecordingState:startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 560
    :pswitch_2
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "updateRecordingState:remove message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 1548
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.cancelSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->stopScan()Z

    .line 1550
    return-void
.end method

.method public noAntennaCancel()V
    .locals 2

    .prologue
    .line 1573
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, " onClick Negative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->exitService()V

    .line 1579
    :goto_0
    return-void

    .line 1577
    :cond_0
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "No need exit Service and Activity cause current is lock mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public noAntennaContinue()V
    .locals 2

    .prologue
    .line 1559
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, " noAntennaContinue.onClick ok to continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->powerUpFm()V

    .line 1566
    :goto_0
    return-void

    .line 1563
    :cond_0
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "noAntennaContinue.earphone is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1004
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 1005
    if-eq v4, p1, :cond_0

    .line 1006
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "Error: Invalid requestcode."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v1, "ACTIVITY_RESULT"

    iget v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 1009
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1012
    .local v0, "iStation":I
    iput v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 1016
    iput-boolean v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    .line 1017
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityForReult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-nez v1, :cond_1

    .line 1019
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "activity.onActivityResult mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iput-boolean v4, p0, Lcom/android/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    goto :goto_0

    .line 1023
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V

    goto :goto_0

    .line 1030
    .end local v0    # "iStation":I
    :cond_2
    const-string v1, "FmRx/FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The activity for requestcode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1031
    const-string v3, " does not return any data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1200
    const-string v2, "FmRx/FMRadioEngineer"

    const-string v3, "begin FMRadioEngineer.onBackPressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-eqz v2, :cond_2

    .line 1203
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->changeRecordingMode(Z)V

    .line 1204
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-nez v2, :cond_0

    .line 1205
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    return-void

    .line 1209
    :cond_0
    sget v2, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1210
    .local v0, "isPlaying":Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1211
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1212
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1213
    invoke-direct {p0, v1}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    goto :goto_0

    .line 1218
    .end local v0    # "isPlaying":Z
    :cond_2
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-eqz v1, :cond_3

    sget v1, Lcom/android/fmradio/FmService;->DURING_POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1219
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1220
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1221
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1222
    invoke-direct {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1223
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->exitService()V

    goto :goto_0

    .line 1227
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1228
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "end FMRadioEngineer.onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 654
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 655
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->setVolumeControlStream(I)V

    .line 658
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->setContentView(I)V

    .line 659
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 660
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    .line 662
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->initUiComponent()V

    .line 663
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->registerButtonClickListener()V

    .line 664
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mAudioManager:Landroid/media/AudioManager;

    .line 666
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 668
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onCreate end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 850
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "start FMRadioEngineer.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFmListener:Lcom/android/fmradio/FmListener;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->unregisterFmRadioListener(Lcom/android/fmradio/FmListener;)V

    .line 859
    :cond_0
    iput-object v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mFmListener:Lcom/android/fmradio/FmListener;

    .line 861
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "end FMRadioEngineer.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 863
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1436
    const-string v0, "FmRx/FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popmenu dismiss listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->invalidateOptionsMenu()V

    .line 1438
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 794
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "start FMRadioEngineer.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    .line 823
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "end FMRadioEngineer.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 825
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 759
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 760
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onResume start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    .line 773
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1372
    const/4 v1, 0x5

    .line 1373
    .local v1, "size":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1374
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "isInRecordingMode"

    iget-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1375
    const-string v2, "mPrevRecorderState"

    iget v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    const-string v2, "mIsFreshRecordingStatus"

    iget-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1378
    const-string v2, "mIsNeedShowSearchDlg"

    iget-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1379
    const-string v2, "mRecordState"

    iget v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mRecordState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1380
    const-string v2, "mIsPlaying"

    iget-boolean v3, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1381
    const-string v2, "FmRx/FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRetainNonConfigurationInstance() bundle:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1387
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1389
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 729
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 730
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fmradio/FmService;->setActivityIsOnStop(Z)V

    .line 731
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onStart start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v0, Landroid/content/Intent;

    .line 734
    const-class v1, Lcom/android/fmradio/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 735
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_0
    return-void

    .line 739
    :cond_0
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    .line 740
    new-instance v0, Landroid/content/Intent;

    .line 741
    const-class v1, Lcom/android/fmradio/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 740
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/fmradio/FMRadioEngineer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 744
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    if-nez v0, :cond_1

    .line 745
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {p0}, Lcom/android/fmradio/FMRadioEngineer;->finish()V

    goto :goto_0

    .line 749
    :cond_1
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->restoreConfiguration()V

    .line 750
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onStart end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 833
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/fmradio/FmService;->setActivityIsOnStop(Z)V

    .line 834
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "start FMRadioEngineer.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FMRadioEngineer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 837
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 839
    :cond_0
    iput-boolean v2, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    .line 840
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "end FMRadioEngineer.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 842
    return-void
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 1464
    invoke-static {}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->newInstance()Lcom/android/fmradio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 1465
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1466
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1467
    return-void
.end method

.method public showSaveRecordingDialog()V
    .locals 0

    .prologue
    .line 1482
    return-void
.end method

.method public stopfm()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, " stopfm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v0, p0, Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/android/fmradio/FMRadioEngineer;->exitService()V

    .line 449
    :cond_0
    return-void
.end method
