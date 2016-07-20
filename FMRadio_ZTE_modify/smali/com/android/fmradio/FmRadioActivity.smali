.class public Lcom/android/fmradio/FmRadioActivity;
.super Landroid/app/Activity;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Lcom/android/fmradio/dialogs/RenameStationDialog$RenameStationListener;
.implements Lcom/android/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
.implements Lcom/android/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;
.implements Lcom/android/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
.implements Lcom/android/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# static fields
.field private static final PERMISSION_REQUEST_CODE_RECORDING:I = 0x65

.field private static final PERMISSION_REQUEST_CODE_SAVED_RECORDING:I = 0x66

.field private static final PERMISSION_REQUEST_POWER_ON:I = 0x64

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final START_COUNT_DOWN_TIME:Ljava/lang/String; = "startCountDownTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field private static final TAG:Ljava/lang/String; = "FmRx/Activity"

.field public static final TAG_DELETE:Ljava/lang/String; = "Delete"

.field public static final TAG_NO_ANTENNA:Ljava/lang/String; = "NoAntenna"

.field public static final TAG_RENAME:Ljava/lang/String; = "Rename"

.field public static final TAG_SEARCH:Ljava/lang/String; = "Search"

.field private static final TAG_SLEEP:Ljava/lang/String; = "Sleep"

.field public static final TAG_SWITCH_FREQ:Ljava/lang/String; = "SwitchFreq"


# instance fields
.field private FreqSelectionBarCallback:Lcom/android/fmradio/FreqSelectionBar$OnFrequencyChange;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonNextStation:Landroid/view/View;

.field private mButtonPrevStation:Landroid/view/View;

.field private mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCountDownStopTime:J

.field private mCurrentStation:I

.field private mFavorCursor:Landroid/database/Cursor;

.field private mFavorDrawerClose:Landroid/widget/ImageButton;

.field private mFavorDrawerOpen:Landroid/widget/ImageButton;

.field private mFavorItemAdapter:Lcom/android/fmradio/FavorItemAdapter;

.field private final mFavorItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFavorPart:Landroid/widget/RelativeLayout;

.field private mFmListener:Lcom/android/fmradio/FmListener;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

.field private mFreqValue:Landroid/view/View;

.field private mFreqValueClickListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mFreqValueImg:[I

.field private mFreqValueNums:[Landroid/widget/ImageView;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityForeground:Z

.field private mIsFavorBarOpened:Z

.field private mIsInCountDownMode:Z

.field private mIsInRecordingMode:Z

.field private mIsNeedShowNoAntennaDlg:Z

.field private mIsNeedShowSearchDlg:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mNeedTuneto:Z

.field private mNoFavorIcon:Landroid/widget/ImageView;

.field private mNoFavorText:Landroid/widget/TextView;

.field private mParentView:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPreLoading:Landroid/widget/ImageView;

.field private mPrevRecorderState:I

.field private mRadioPart:Landroid/widget/RelativeLayout;

.field private mRecIcon:Landroid/widget/ImageView;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private final mSdcardListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/fmradio/FmService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mSleepIcon:Landroid/widget/ImageView;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTextGeoCity:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTxtRecTime:Landroid/widget/TextView;

.field private mTxtSleepTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 135
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    .line 136
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    .line 137
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    .line 138
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    .line 139
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    .line 140
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 144
    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueImg:[I

    .line 145
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    .line 147
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 148
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 149
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 150
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    .line 151
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 152
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    .line 153
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->FreqSelectionBarCallback:Lcom/android/fmradio/FreqSelectionBar$OnFrequencyChange;

    .line 155
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    .line 156
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTextGeoCity:Landroid/widget/TextView;

    .line 157
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    .line 158
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    .line 159
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    .line 160
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    .line 161
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/android/fmradio/FavorItemAdapter;

    .line 162
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    .line 163
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    .line 165
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 166
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mNeedTuneto:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z

    .line 173
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    .line 180
    iput-wide v4, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordStartTime:J

    .line 181
    iput-wide v4, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPrevRecorderState:I

    .line 183
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 184
    iput v2, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    .line 187
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    .line 188
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 189
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    .line 190
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 191
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 195
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$1;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    .line 214
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$2;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$3;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 251
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$4;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$4;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueClickListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 320
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$5;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$5;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$6;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$6;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$7;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$7;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 105
    return-void

    .line 141
    nop

    :array_0
    .array-data 4
        0x7f02021b
        0x7f02021c
        0x7f02021d
        0x7f02021e
        0x7f02021f
        0x7f020220
        0x7f020221
        0x7f020222
        0x7f020223
        0x7f020224
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/fmradio/FmRadioActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/fmradio/FmRadioActivity;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 1693
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->setSpeakerPhoneOn(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    return-void
.end method

.method static synthetic access$12(Lcom/android/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    return v0
.end method

.method static synthetic access$13(Lcom/android/fmradio/FmRadioActivity;IZ)V
    .locals 0

    .prologue
    .line 903
    invoke-direct {p0, p1, p2}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    return-void
.end method

.method static synthetic access$14(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 2027
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->refreshTimeText()V

    return-void
.end method

.method static synthetic access$15(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 2069
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->refreshCountDownTimeText()V

    return-void
.end method

.method static synthetic access$16(Lcom/android/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    return-void
.end method

.method static synthetic access$17(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$18(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$19(Lcom/android/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/fmradio/FmRadioActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$20(Lcom/android/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->refreshRulerUI(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    return-void
.end method

.method static synthetic access$22(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 1402
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/android/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    return v0
.end method

.method static synthetic access$25(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->showSearchDialog()V

    return-void
.end method

.method static synthetic access$26(Lcom/android/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 1704
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return-void
.end method

.method static synthetic access$28(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1677
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissSearchDialog()V

    return-void
.end method

.method static synthetic access$29(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->enterChannelList()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    return-object v0
.end method

.method static synthetic access$30(Lcom/android/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->updateRecordingState(I)V

    return-void
.end method

.method static synthetic access$31(Lcom/android/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->updateRecorderError(I)V

    return-void
.end method

.method static synthetic access$32(Lcom/android/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$33(Lcom/android/fmradio/FmRadioActivity;Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    return-void
.end method

.method static synthetic access$34(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmListener;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    return-object v0
.end method

.method static synthetic access$35(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->powerUpFm()V

    return-void
.end method

.method static synthetic access$36(Lcom/android/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return v0
.end method

.method static synthetic access$37(Lcom/android/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNeedTuneto:Z

    return v0
.end method

.method static synthetic access$38(Lcom/android/fmradio/FmRadioActivity;Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/fmradio/FmRadioActivity;->mNeedTuneto:Z

    return-void
.end method

.method static synthetic access$39(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1871
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateCurrentStation()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/fmradio/FmRadioActivity;)Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$40(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1908
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateMenuStatus()V

    return-void
.end method

.method static synthetic access$41(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1891
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateDialogStatus()V

    return-void
.end method

.method static synthetic access$42(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->restoreRecorderState()V

    return-void
.end method

.method static synthetic access$43(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->restoreCountDownState()V

    return-void
.end method

.method static synthetic access$44(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->exitService()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/fmradio/FmRadioActivity;I)V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/android/fmradio/FmRadioActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateFavoriteStation()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/fmradio/FmRadioActivity;)I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$9(Lcom/android/fmradio/FmRadioActivity;IZ)V
    .locals 0

    .prologue
    .line 1392
    invoke-direct {p0, p1, p2}, Lcom/android/fmradio/FmRadioActivity;->seekStation(IZ)V

    return-void
.end method

.method private changeRecordingMode(Z)V
    .locals 3
    .param p1, "recordingMode"    # Z

    .prologue
    .line 1452
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeRecordingMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    if-ne v0, p1, :cond_1

    .line 1454
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "FM already "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "in"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1455
    const-string v2, "recording mode!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :goto_1
    return-void

    .line 1454
    :cond_0
    const-string v0, "NOT in"

    goto :goto_0

    .line 1458
    :cond_1
    iput-boolean p1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1459
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FmService;->setRecordingModeAsync(Z)V

    goto :goto_1
.end method

.method private checkNoAntennaDialogInOnResume()V
    .locals 2

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    const-string v0, "FmRx/Activity"

    .line 1065
    const-string v1, "Need to show no antenna dialog for plug out earphone in onPause state"

    .line 1064
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z

    .line 1067
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->showNoAntennaDialog()V

    .line 1069
    :cond_0
    return-void
.end method

.method private dismissNoAntennaDialog()Z
    .locals 3

    .prologue
    .line 1705
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1706
    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1705
    check-cast v0, Lcom/android/fmradio/dialogs/NoAntennaDialog;

    .line 1707
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->dismissAllowingStateLoss()V

    .line 1709
    const/4 v1, 0x1

    .line 1711
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissRenameDialog()V
    .locals 6

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1726
    const-string v5, "Rename"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1725
    check-cast v1, Lcom/android/fmradio/dialogs/RenameStationDialog;

    .line 1727
    .local v1, "dialogFragment":Lcom/android/fmradio/dialogs/RenameStationDialog;
    if-nez v1, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    invoke-virtual {v1}, Lcom/android/fmradio/dialogs/RenameStationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1731
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1735
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 1736
    const-string v5, "mShowing"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1737
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1738
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1
    invoke-virtual {v1}, Lcom/android/fmradio/dialogs/RenameStationDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 1739
    :catch_0
    move-exception v2

    .line 1743
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1679
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1678
    check-cast v0, Lcom/android/fmradio/dialogs/SearchChannelsDialog;

    .line 1680
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->dismissAllowingStateLoss()V

    .line 1683
    :cond_0
    return-void
.end method

.method private dismissSleepTimeDialog()V
    .locals 3

    .prologue
    .line 1768
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1769
    const-string v2, "Sleep"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1768
    check-cast v0, Lcom/android/fmradio/dialogs/SleepTimeDialog;

    .line 1770
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SleepTimeDialog;
    if-eqz v0, :cond_0

    .line 1771
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/SleepTimeDialog;->dismissAllowingStateLoss()V

    .line 1773
    :cond_0
    return-void
.end method

.method private dismissSwitchFreqDialog()V
    .locals 3

    .prologue
    .line 1754
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1755
    const-string v2, "SwitchFreq"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1754
    check-cast v0, Lcom/android/fmradio/dialogs/SwitchFreqDialog;

    .line 1756
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SwitchFreqDialog;
    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/SwitchFreqDialog;->dismissAllowingStateLoss()V

    .line 1759
    :cond_0
    return-void
.end method

.method private editSharedPreferences(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 797
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 798
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 799
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 801
    return-void
.end method

.method private enterChannelList()V
    .locals 3

    .prologue
    .line 839
    const-string v1, "FmRx/Activity"

    const-string v2, "enterChannelList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v1, :cond_0

    .line 843
    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    if-eqz v1, :cond_1

    .line 844
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 845
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/fmradio/FmRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 846
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/fmradio/FmRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 852
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    const-string v1, "FmRx/Activity"

    .line 849
    const-string v2, "enterChannelList. activity is background, not enter channel list."

    .line 848
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1640
    const-string v1, "FmRx/Activity"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1643
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1646
    :cond_0
    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 1647
    new-instance v1, Landroid/content/Intent;

    .line 1648
    const-class v2, Lcom/android/fmradio/FmService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1647
    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1649
    .local v0, "isSuccess":Z
    if-nez v0, :cond_1

    .line 1650
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_1
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    .line 1654
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

    .line 736
    const/16 v3, 0xe10

    .line 737
    .local v3, "oneHour":I
    div-int/lit16 v0, p1, 0xe10

    .line 738
    .local v0, "hour":I
    const/16 v2, 0x3c

    .line 739
    .local v2, "minuteSecond":I
    div-int/lit8 v8, p1, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 740
    .local v1, "minute":I
    rem-int/lit8 v4, p1, 0x3c

    .line 741
    .local v4, "second":I
    const/4 v7, 0x0

    .line 743
    .local v7, "timeString":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 744
    const-string v5, "%02d:%02d:%02d"

    .line 745
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

    .line 751
    .end local v5    # "timeFormatLong":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 747
    :cond_0
    const-string v6, "%02d:%02d"

    .line 748
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

.method public static hasSoftMenuButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2168
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initUiComponent()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1928
    const-string v0, "FmRx/Activity"

    const-string v2, "initUIComponent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const v0, 0x7f0600ac

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    .line 1930
    const v0, 0x7f0600bf

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    .line 1931
    const v0, 0x7f0600c2

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    .line 1932
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    .line 1933
    const v0, 0x7f0600c1

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    .line 1934
    const v0, 0x7f0600b0

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    .line 1935
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const v0, 0x7f0600b1

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v4

    .line 1936
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    const v0, 0x7f0600b2

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v3

    .line 1937
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v3

    .line 1938
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    const v0, 0x7f0600b4

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v3

    .line 1939
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    const v0, 0x7f0600b5

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v8

    .line 1940
    const v0, 0x7f0600b7

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    .line 1941
    const v0, 0x7f0600b8

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    .line 1942
    const v0, 0x7f0600ba

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 1943
    const v0, 0x7f0600bd

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 1944
    const v0, 0x7f0600bc

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 1945
    const v0, 0x7f0600c6

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fmradio/FreqSelectionBar;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    .line 1946
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1947
    .local v1, "screenWidth":I
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    const/16 v2, 0x438

    const/16 v3, 0x36b

    .line 1948
    iget v5, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 1947
    invoke-virtual/range {v0 .. v5}, Lcom/android/fmradio/FreqSelectionBar;->initFreqSelectionBar(IIIII)V

    .line 1950
    const v0, 0x7f0600c7

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    .line 1951
    const v0, 0x7f0600c9

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mTextGeoCity:Landroid/widget/TextView;

    .line 1952
    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    .line 1953
    const v0, 0x7f0600cb

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    .line 1954
    const v0, 0x7f0600cd

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    .line 1955
    const v0, 0x7f0600ce

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    .line 1956
    const v0, 0x7f0600cf

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    .line 1957
    new-instance v0, Lcom/android/fmradio/FavorItemAdapter;

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v2}, Lcom/android/fmradio/FavorItemAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/android/fmradio/FavorItemAdapter;

    .line 1958
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/android/fmradio/FavorItemAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1959
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    .line 1960
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 1962
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1960
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1963
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    const-string v2, "#b3000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1966
    new-instance v0, Landroid/widget/PopupMenu;

    const v2, 0x7f0600e0

    invoke-virtual {p0, v2}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1967
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    .line 1968
    .local v6, "menu":Landroid/view/Menu;
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f0002

    invoke-virtual {v0, v2, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1972
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 1975
    const v0, 0x7f0201f4

    .line 1974
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 1976
    const v0, 0x7f0600c4

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    .line 1977
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1978
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1694
    invoke-static {}, Lcom/android/fmradio/FmService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "sdcard":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "unmountSDCard":Ljava/lang/String;
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unmount sd card file path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
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

    .line 1698
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private powerUpFm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1335
    const-string v0, "FmRx/Activity"

    const-string v1, "start powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1337
    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->setRecordingPermission(Z)V

    .line 1353
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->startAnimation()V

    .line 1354
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->powerUpAsync(F)V

    .line 1355
    const-string v0, "FmRx/Activity"

    const-string v1, "end powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void
.end method

.method private refreshCountDownTimeText()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v6, 0x8

    .line 2070
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refreshCountDownTimeText:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 2072
    const/16 v0, 0x3e8

    .line 2073
    .local v0, "oneSecond":I
    iget-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 2074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2073
    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    long-to-int v1, v2

    .line 2075
    .local v1, "sleepTime":I
    if-lez v1, :cond_0

    .line 2076
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2077
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2078
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    .line 2079
    const/16 v3, 0x66

    .line 2078
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2088
    .end local v0    # "oneSecond":I
    .end local v1    # "sleepTime":I
    :goto_0
    return-void

    .line 2081
    .restart local v0    # "oneSecond":I
    .restart local v1    # "sleepTime":I
    :cond_0
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2082
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2085
    .end local v0    # "oneSecond":I
    .end local v1    # "sleepTime":I
    :cond_1
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2086
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshFavorUI(IZ)V
    .locals 10
    .param p1, "station"    # I
    .param p2, "isOpened"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 904
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 906
    iput-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 908
    :cond_0
    if-nez p2, :cond_2

    .line 909
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 910
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 911
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "frequency"

    aput-object v3, v2, v8

    .line 912
    const-string v3, "station_name"

    aput-object v3, v2, v5

    .line 913
    const-string v3, "is_favorite=1"

    .line 915
    const-string v5, "frequency ASC LIMIT 4 OFFSET 0"

    .line 909
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 917
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 933
    :goto_0
    const/4 v6, 0x0

    .line 934
    .local v6, "count":I
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 939
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFavorCursor.getCount()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/android/fmradio/FavorItemAdapter;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FavorItemAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 948
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemAdapter:Lcom/android/fmradio/FavorItemAdapter;

    invoke-virtual {v0}, Lcom/android/fmradio/FavorItemAdapter;->notifyDataSetChanged()V

    .line 950
    if-lez v6, :cond_3

    .line 951
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setVisibility(I)V

    .line 959
    :goto_2
    return-void

    .line 921
    .end local v6    # "count":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 922
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 923
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "frequency"

    aput-object v3, v2, v8

    .line 924
    const-string v3, "station_name"

    aput-object v3, v2, v5

    .line 925
    const-string v3, "is_favorite=1"

    .line 927
    const-string v5, "frequency ASC "

    .line 921
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 928
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 931
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRadioPart:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 941
    .restart local v6    # "count":I
    :catch_0
    move-exception v7

    .line 942
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 943
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 944
    iput-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 955
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mNoFavorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshImageButton(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1403
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1405
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1406
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1407
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1408
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    invoke-virtual {v1, v0}, Lcom/android/fmradio/FreqSelectionBar;->setEnabled(Z)V

    .line 1409
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1422
    :goto_0
    return-void

    .line 1411
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1412
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1413
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1414
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->isBluetoothHeadsetInUse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1415
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->isRender()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1414
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1416
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 1417
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isSpeakerUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020202

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1419
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FreqSelectionBar;->setEnabled(Z)V

    .line 1420
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorPart:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1418
    :cond_3
    const v0, 0x7f020201

    goto :goto_1
.end method

.method private refreshPopupMenuItem(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1426
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1427
    .local v0, "menu":Landroid/view/Menu;
    const v1, 0x7f0600e1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1428
    const v1, 0x7f0600e2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1429
    const v1, 0x7f0600e3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1430
    const v1, 0x7f0600e4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1431
    const v1, 0x7f0600e5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1432
    const v1, 0x7f0600e6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1434
    .end local v0    # "menu":Landroid/view/Menu;
    :cond_0
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 8
    .param p1, "stateOverride"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1469
    const/4 v2, -0x1

    .line 1471
    .local v2, "recorderState":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    .line 1472
    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->getRecorderState()I

    move-result v2

    .line 1474
    :goto_0
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshRecordingStatus: state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    packed-switch v2, :pswitch_data_0

    .line 1499
    :pswitch_0
    const-string v3, "FmRx/Activity"

    const-string v4, "invalid record status"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :goto_1
    :pswitch_1
    iput v2, p0, Lcom/android/fmradio/FmRadioActivity;->mPrevRecorderState:I

    .line 1503
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshRecordingStatus.mPrevRecorderState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1504
    iget v5, p0, Lcom/android/fmradio/FmRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1503
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return-void

    :cond_0
    move v2, p1

    .line 1472
    goto :goto_0

    .line 1477
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1478
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->getRecordTime()J

    move-result-wide v0

    .line 1479
    .local v0, "recordTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 1484
    :cond_1
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1485
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1489
    .end local v0    # "recordTime":J
    :pswitch_3
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1475
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private refreshRulerUI(I)V
    .locals 1
    .param p1, "station"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FreqSelectionBar;->freqToLayoutX(I)V

    .line 901
    return-void
.end method

.method private refreshStationUI(I)V
    .locals 8
    .param p1, "station"    # I

    .prologue
    const/4 v7, 0x4

    .line 862
    move v0, p1

    .line 863
    .local v0, "freq":I
    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 864
    const/16 v0, 0x36b

    .line 866
    :cond_0
    const/4 v5, 0x0

    .line 867
    .local v5, "num":I
    const/16 v6, 0x3e8

    if-lt v0, v6, :cond_1

    .line 868
    const/4 v5, 0x5

    .line 869
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "freqValue":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_2

    .line 887
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v4

    .line 891
    .local v4, "isFavoriteStation":Z
    if-eqz v4, :cond_5

    .line 892
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v7, 0x7f0201f6

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 896
    :goto_2
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/android/fmradio/FmStation;->getStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    return-void

    .line 871
    .end local v1    # "freqValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "isFavoriteStation":Z
    :cond_1
    const/4 v5, 0x4

    .line 872
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v7

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 876
    .restart local v1    # "freqValue":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v6, v5, -0x2

    if-ge v2, v6, :cond_3

    .line 877
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 878
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueImg:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 875
    .end local v3    # "index":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 879
    :cond_3
    add-int/lit8 v6, v5, -0x2

    if-le v2, v6, :cond_4

    .line 880
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 881
    .restart local v3    # "index":I
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueImg:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 883
    .end local v3    # "index":I
    :cond_4
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueNums:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const v7, 0x7f020226

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 894
    .restart local v4    # "isFavoriteStation":Z
    :cond_5
    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v7, 0x7f0201f5

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method private refreshTimeText()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v6, 0x8

    .line 2028
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshTimeText:mRecordState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    if-nez v3, :cond_1

    .line 2030
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshTimeText:mIsInRecordingMode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2031
    iget-boolean v5, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2030
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2033
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->stopRecordingAsync()V

    .line 2035
    :cond_0
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2036
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2067
    :goto_0
    return-void

    .line 2040
    :cond_1
    const/16 v0, 0x3e8

    .line 2041
    .local v0, "oneSecond":I
    iget v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    packed-switch v3, :pswitch_data_0

    .line 2062
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2065
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2043
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordStartTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v1, v4

    .line 2044
    .local v1, "recordTime":I
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2046
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recording time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-static {}, Lcom/android/fmradio/FmService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v2

    .line 2048
    .local v2, "recordingSdcard":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->hasEnoughSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2051
    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 2053
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->stopRecordingAsync()V

    goto :goto_1

    .line 2041
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerButtonClickListener()V
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1982
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValue:Landroid/view/View;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqValueClickListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1983
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonPrevStation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1984
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonNextStation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1985
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1986
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1987
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerOpen:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1988
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorDrawerClose:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/android/fmradio/FmRadioActivity$8;

    invoke-direct {v1, p0}, Lcom/android/fmradio/FmRadioActivity$8;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1996
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1997
    new-instance v0, Lcom/android/fmradio/FmRadioActivity$9;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioActivity$9;-><init>(Lcom/android/fmradio/FmRadioActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->FreqSelectionBarCallback:Lcom/android/fmradio/FreqSelectionBar$OnFrequencyChange;

    .line 2010
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFreqSelectionBar:Lcom/android/fmradio/FreqSelectionBar;

    .line 2011
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->FreqSelectionBarCallback:Lcom/android/fmradio/FreqSelectionBar$OnFrequencyChange;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FreqSelectionBar;->setOnFrequencyChangeCallBack(Lcom/android/fmradio/FreqSelectionBar$OnFrequencyChange;)V

    .line 2012
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 2

    .prologue
    .line 2015
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2016
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2017
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2018
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2019
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2020
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/fmradio/FmRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2021
    return-void
.end method

.method private restoreConfiguration()V
    .locals 4

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 965
    const-string v1, "FmRx/Activity"

    .line 966
    const-string v2, "Configration changes,activity restart,need to reset UI!"

    .line 965
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 968
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 982
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 971
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "mPrevRecorderState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FmRadioActivity;->mPrevRecorderState:I

    .line 972
    const-string v1, "mRecordState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    .line 975
    const-string v1, "mIsNeedShowSearchDlg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 978
    const-string v1, "isInRecordingMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 979
    const-string v1, "mIsPlaying"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z

    .line 980
    const-string v1, "FmRx/Activity"

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

.method private restoreCountDownState()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x8

    .line 1310
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isInCountDownMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 1311
    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    if-eqz v1, :cond_1

    .line 1312
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1314
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "startCountDownTime"

    .line 1313
    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 1315
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&sendemptyMessage:mCountDownStop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1316
    iget-wide v4, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1315
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    cmp-long v1, v8, v2

    if-eqz v1, :cond_0

    .line 1318
    iget-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1320
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1329
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1322
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1323
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1326
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1327
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private restoreRecorderState()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    .line 1293
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getRecordingMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 1294
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getRecorderState()I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    .line 1296
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v1, v2, :cond_0

    .line 1297
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1298
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "startRecordTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordStartTime:J

    .line 1299
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1300
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&sendemptyMessage:mRecoderStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1306
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1304
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private seekStation(IZ)V
    .locals 2
    .param p1, "station"    # I
    .param p2, "direction"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1395
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->startAnimation()V

    .line 1396
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1398
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    .line 1400
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "isSpeaker"    # Z

    .prologue
    .line 1359
    if-eqz p1, :cond_0

    .line 1360
    const-string v0, "FmRx/Activity"

    const-string v1, "UseSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->setSpeakerPhoneOn(Z)V

    .line 1366
    :goto_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;

    .line 1367
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isSpeakerUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020202

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1369
    return-void

    .line 1363
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "UseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->setSpeakerPhoneOn(Z)V

    goto :goto_0

    .line 1368
    :cond_1
    const v0, 0x7f020201

    goto :goto_1
.end method

.method private showRenameDialog(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 1715
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/fmradio/FmStation;->getStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1716
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1717
    :cond_0
    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 1719
    :cond_1
    invoke-static {v0}, Lcom/android/fmradio/dialogs/RenameStationDialog;->newInstance(Ljava/lang/String;)Lcom/android/fmradio/dialogs/RenameStationDialog;

    move-result-object v1

    .line 1720
    .local v1, "newFragment":Lcom/android/fmradio/dialogs/RenameStationDialog;
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "Rename"

    invoke-virtual {v1, v2, v3}, Lcom/android/fmradio/dialogs/RenameStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1721
    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1722
    return-void
.end method

.method private showSearchDialog()V
    .locals 3

    .prologue
    .line 1669
    invoke-static {}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->newInstance()Lcom/android/fmradio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 1670
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1671
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1672
    return-void
.end method

.method private showSleepTimeDialog()V
    .locals 3

    .prologue
    .line 1762
    invoke-static {}, Lcom/android/fmradio/dialogs/SleepTimeDialog;->newInstance()Lcom/android/fmradio/dialogs/SleepTimeDialog;

    move-result-object v0

    .line 1763
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SleepTimeDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Sleep"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/SleepTimeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1764
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1765
    return-void
.end method

.method private showSwitchFreqDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 1749
    invoke-static {p1}, Lcom/android/fmradio/dialogs/SwitchFreqDialog;->newInstance(I)Lcom/android/fmradio/dialogs/SwitchFreqDialog;

    move-result-object v0

    .line 1750
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SwitchFreqDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "SwitchFreq"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/SwitchFreqDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1751
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1442
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioActivity.showToast: toast = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1276
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1277
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.startAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void
.end method

.method private startRecording()V
    .locals 4

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v0, :cond_0

    .line 2192
    const-string v0, "FmRx/Activity"

    const-string v1, "menu_recordStart, mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :goto_0
    return-void

    .line 2195
    :cond_0
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 2196
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2199
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->changeRecordingMode(Z)V

    .line 2200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordStartTime:J

    .line 2201
    const-string v0, "startRecordTime"

    iget-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordStartTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/fmradio/FmRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V

    .line 2202
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->startRecordingAsync()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPreLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1286
    return-void
.end method

.method private tuneToStation(I)V
    .locals 2
    .param p1, "station"    # I

    .prologue
    const/4 v0, 0x0

    .line 1378
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->startAnimation()V

    .line 1379
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1380
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1381
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->tuneStationAsync(F)V

    .line 1382
    return-void
.end method

.method private unregisterSdcardReceiver()V
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2025
    return-void
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 1875
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getFrequency()I

    move-result v0

    .line 1876
    .local v0, "freq":I
    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    if-eq v1, v0, :cond_0

    .line 1878
    const-string v1, "FmRx/Activity"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iput v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 1880
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1881
    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V

    .line 1882
    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshRulerUI(I)V

    .line 1883
    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v1, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    .line 1886
    :cond_0
    return-void
.end method

.method private updateDialogStatus()V
    .locals 4

    .prologue
    .line 1892
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus.mIsNeedShowSearchDlg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1893
    iget-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1892
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isScanning()Z

    move-result v0

    .line 1897
    .local v0, "isScan":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    if-eqz v1, :cond_0

    .line 1898
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus: show search dialog. isScan is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1901
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->showSearchDialog()V

    .line 1903
    :cond_0
    return-void
.end method

.method private updateFavoriteStation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 758
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->updateFavoriteStation(I)V

    .line 786
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->removeFromFavorite(Landroid/content/Context;I)V

    .line 766
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f0201f5

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 767
    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v1, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_0

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/fmradio/FmStation;->getStationCount(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 771
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 773
    :cond_2
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->isStationExist(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->addToFavorite(Landroid/content/Context;I)V

    .line 781
    :goto_1
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 782
    const v2, 0x7f0201f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 783
    iget v1, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v1, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_0

    .line 776
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 777
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "frequency"

    iget v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v1, "is_favorite"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 779
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_1
.end method

.method private updateMenuStatus()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1909
    sget v7, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v8, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v8}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v8

    if-ne v7, v8, :cond_2

    move v1, v5

    .line 1910
    .local v1, "isPlaying":Z
    :goto_0
    sget v7, Lcom/android/fmradio/FmService;->DURING_POWER_UP:I

    iget-object v8, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v8}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v8

    if-ne v7, v8, :cond_3

    move v2, v5

    .line 1911
    .local v2, "isPoweruping":Z
    :goto_1
    iget-object v7, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->isSeeking()Z

    move-result v4

    .line 1912
    .local v4, "isSeeking":Z
    iget-object v7, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->isScanning()Z

    move-result v3

    .line 1913
    .local v3, "isScan":Z
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateMenuStatus.isSeeking:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    move v0, v6

    .line 1917
    .local v0, "fmStatus":Z
    :goto_2
    if-eqz v0, :cond_5

    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1918
    if-eqz v0, :cond_6

    :goto_4
    invoke-direct {p0, v6}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1921
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    .line 1922
    :cond_0
    const-string v5, "FmRx/Activity"

    const-string v6, "updateMenuStatus. it is seeking or poweruping"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->startAnimation()V

    .line 1925
    :cond_1
    return-void

    .end local v0    # "fmStatus":Z
    .end local v1    # "isPlaying":Z
    .end local v2    # "isPoweruping":Z
    .end local v3    # "isScan":Z
    .end local v4    # "isSeeking":Z
    :cond_2
    move v1, v6

    .line 1909
    goto :goto_0

    .restart local v1    # "isPlaying":Z
    :cond_3
    move v2, v6

    .line 1910
    goto :goto_1

    .restart local v2    # "isPoweruping":Z
    .restart local v3    # "isScan":Z
    .restart local v4    # "isSeeking":Z
    :cond_4
    move v0, v5

    .line 1914
    goto :goto_2

    .restart local v0    # "fmStatus":Z
    :cond_5
    move v5, v1

    .line 1917
    goto :goto_3

    :cond_6
    move v6, v1

    .line 1918
    goto :goto_4
.end method

.method private updateRecorderError(I)V
    .locals 5
    .param p1, "errorType"    # I

    .prologue
    const v4, 0x7f090056

    .line 695
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateRecorderError.errorType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    .line 697
    const/4 v0, 0x0

    .line 700
    .local v0, "showString":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshRecordingStatus(I)V

    .line 701
    packed-switch p1, :pswitch_data_0

    .line 719
    const-string v1, "FmRx/Activity"

    const-string v2, "updateRecorderError, invalid record error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 725
    return-void

    .line 703
    :pswitch_0
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    goto :goto_0

    .line 707
    :pswitch_1
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    goto :goto_0

    .line 711
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    goto :goto_0

    .line 715
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    goto :goto_0

    .line 701
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

    .line 663
    iput p1, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    .line 664
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->refreshRecordingStatus(I)V

    .line 666
    packed-switch p1, :pswitch_data_0

    .line 683
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    :goto_0
    return-void

    .line 668
    :pswitch_0
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 669
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 678
    :pswitch_2
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:remove message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 666
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
    .line 1834
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.cancelSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->stopScan()Z

    .line 1836
    return-void
.end method

.method public noAntennaCancel()V
    .locals 2

    .prologue
    .line 1859
    const-string v0, "FmRx/Activity"

    const-string v1, " onClick Negative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1861
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->exitService()V

    .line 1866
    :goto_0
    return-void

    .line 1863
    :cond_0
    const-string v0, "FmRx/Activity"

    .line 1864
    const-string v1, "No need exit Service and Activity cause current is lock mode"

    .line 1863
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public noAntennaContinue()V
    .locals 2

    .prologue
    .line 1845
    const-string v0, "FmRx/Activity"

    const-string v1, " noAntennaContinue.onClick ok to continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1847
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->powerUpFm()V

    .line 1852
    :goto_0
    return-void

    .line 1849
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "noAntennaContinue.earphone is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 291
    .local v0, "freq":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 313
    :pswitch_0
    const-string v1, "FmRx/Activity"

    const-string v2, "invalid menu item"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 293
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showRenameDialog(I)V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateFavoriteStation()V

    goto :goto_0

    .line 303
    :pswitch_3
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateFavoriteStation()V

    goto :goto_0

    .line 309
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showSwitchFreqDialog(I)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x7f0600e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 811
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 812
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->setVolumeControlStream(I)V

    .line 814
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 815
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x75e69f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->hasSoftMenuButton(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 818
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity PermanentKey"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const v1, 0x7f03004c

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->setContentView(I)V

    .line 824
    :goto_0
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 825
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    .line 827
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->initUiComponent()V

    .line 828
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->registerButtonClickListener()V

    .line 829
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->registerSdcardReceiver()V

    .line 830
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 831
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 832
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onCreate end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void

    .line 821
    :cond_0
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity SoftKey"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const v1, 0x7f03004d

    invoke-virtual {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1159
    const-string v1, "FmRx/Activity"

    const-string v2, "start FmRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1161
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1162
    const-string v1, "FmRx/Activity"

    const-string v2, "end FmRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1122
    const-string v0, "FmRx/Activity"

    const-string v1, "start FmRadioActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 1124
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1126
    iput-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFavorCursor:Landroid/database/Cursor;

    .line 1128
    :cond_0
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->unregisterSdcardReceiver()V

    .line 1133
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1134
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->unregisterFmRadioListener(Lcom/android/fmradio/FmListener;)V

    .line 1137
    :cond_1
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1139
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1141
    :cond_2
    iput-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    .line 1142
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_3

    .line 1143
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1144
    iput-object v2, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1146
    :cond_3
    const-string v0, "FmRx/Activity"

    const-string v1, "end FmRadioActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1148
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 2163
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popmenu dismiss listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->invalidateOptionsMenu()V

    .line 2165
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2150
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    if-eqz v1, :cond_0

    .line 2151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 2152
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 2153
    .local v0, "freq":I
    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    .line 2154
    const/4 v1, 0x1

    .line 2156
    .end local v0    # "freq":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v8, 0x7f0600e0

    const v7, 0x7f0600e3

    const v6, 0x7f0600e4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2092
    const/16 v4, 0x52

    if-ne p1, v4, :cond_8

    .line 2093
    const/4 v0, 0x0

    .line 2094
    .local v0, "isPlaying":Z
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-virtual {p0, v8}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 2095
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2096
    .local v1, "menu":Landroid/view/Menu;
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2097
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2098
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2100
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v4, :cond_7

    .line 2101
    sget v4, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 2102
    :goto_0
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->getRecorderState()I

    move-result v4

    iput v4, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    .line 2103
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 2105
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->getRecordingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2106
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2107
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2108
    const/4 v4, 0x6

    iget v5, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v4, v5, :cond_2

    .line 2109
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2110
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2127
    :goto_1
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v4}, Lcom/android/fmradio/FmService;->isInCountDownMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2128
    const v4, 0x7f0600e5

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2129
    const v4, 0x7f0600e6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2140
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2141
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 2144
    .end local v0    # "isPlaying":Z
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_0
    :goto_3
    return v2

    .restart local v0    # "isPlaying":Z
    .restart local v1    # "menu":Landroid/view/Menu;
    :cond_1
    move v0, v3

    .line 2101
    goto :goto_0

    .line 2112
    :cond_2
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2116
    :cond_3
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2117
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2118
    const/4 v4, 0x5

    iget v5, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-eq v4, v5, :cond_4

    .line 2119
    const/4 v4, -0x1

    iget v5, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v4, v5, :cond_5

    .line 2120
    :cond_4
    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2123
    :cond_5
    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2132
    :cond_6
    const v4, 0x7f0600e5

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2133
    const v3, 0x7f0600e6

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 2138
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    goto :goto_2

    .line 2144
    .end local v0    # "isPlaying":Z
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_3
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 1543
    const-string v5, "FmRx/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onMenuItemClick:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1630
    const-string v3, "FmRx/Activity"

    const-string v5, "invalid menu item"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_0
    :goto_0
    return v4

    .line 1547
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    if-nez v5, :cond_1

    .line 1548
    const-string v3, "FmRx/Activity"

    const-string v5, "click search menu in background, don\'t show search dialog"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1551
    :cond_1
    sget v5, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v6}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v6

    if-ne v5, v6, :cond_3

    move v0, v3

    .line 1552
    .local v0, "isPlaying":Z
    :goto_1
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->isSeeking()Z

    move-result v2

    .line 1553
    .local v2, "isSeeking":Z
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->isScanning()Z

    move-result v1

    .line 1554
    .local v1, "isScan":Z
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_4

    .line 1555
    :cond_2
    const-string v3, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fm is not ready for scanning, isScan="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSeeking="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isPlaying="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1555
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "isPlaying":Z
    .end local v1    # "isScan":Z
    .end local v2    # "isSeeking":Z
    :cond_3
    move v0, v4

    .line 1551
    goto :goto_1

    .line 1559
    .restart local v0    # "isPlaying":Z
    .restart local v1    # "isScan":Z
    .restart local v2    # "isSeeking":Z
    :cond_4
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1560
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1561
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1562
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->showSearchDialog()V

    .line 1564
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Lcom/android/fmradio/FmService;->startScanAsync()V

    goto :goto_0

    .line 1568
    .end local v0    # "isPlaying":Z
    .end local v1    # "isScan":Z
    .end local v2    # "isSeeking":Z
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1569
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1571
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->enterChannelList()V

    goto :goto_0

    .line 1575
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1576
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1577
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->exitService()V

    .line 1578
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    goto :goto_0

    .line 1582
    :pswitch_3
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->startRecording()V

    goto :goto_0

    .line 1598
    :pswitch_4
    iget-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    if-eqz v3, :cond_0

    .line 1599
    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioActivity;->changeRecordingMode(Z)V

    .line 1600
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v3, :cond_5

    .line 1601
    const-string v3, "FmRx/Activity"

    const-string v5, "menu_recordStop, mService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1604
    :cond_5
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1605
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtRecTime:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1610
    :pswitch_5
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v3, :cond_6

    .line 1611
    const-string v3, "FmRx/Activity"

    const-string v5, "menu_sleepTimer, mService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1614
    :cond_6
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->showSleepTimeDialog()V

    goto/16 :goto_0

    .line 1618
    :pswitch_6
    iput-boolean v4, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 1619
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 1620
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1621
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mTxtSleepTime:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1622
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v3, :cond_7

    .line 1623
    const-string v3, "FmRx/Activity"

    const-string v5, "menu_sleepTimerCancel, mService is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1626
    :cond_7
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v3, v5}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1544
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600e1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v9, 0x7f0600e0

    const v8, 0x7f0600e3

    const v7, 0x7f0600e4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1187
    const-string v5, "FmRx/Activity"

    const-string v6, "start FmRadioActivity.onOptionsItemSelected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1255
    const-string v3, "FmRx/Activity"

    const-string v4, "Error: Invalid options menu item."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    :goto_0
    const-string v3, "FmRx/Activity"

    const-string v4, "end FmRadioActivity.onOptionsItemSelected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 1190
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    if-eqz v5, :cond_1

    .line 1191
    iput-boolean v4, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    .line 1192
    iget-object v4, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 1193
    .local v0, "freq":I
    iget-boolean v4, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v0, v4}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_1

    .line 1197
    .end local v0    # "freq":I
    :cond_1
    const/4 v1, 0x0

    .line 1199
    .local v1, "isPlaying":Z
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-virtual {p0, v9}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1200
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1201
    .local v2, "menu":Landroid/view/Menu;
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f0f0002

    invoke-virtual {v5, v6, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1202
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1203
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1205
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v5, :cond_8

    .line 1206
    sget v5, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v6, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v6}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v1, v3

    .line 1207
    :goto_2
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->getRecorderState()I

    move-result v5

    iput v5, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    .line 1208
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1210
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->getRecordingMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1211
    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1213
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1214
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1215
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v5, v6, :cond_3

    .line 1216
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1236
    :goto_3
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v5}, Lcom/android/fmradio/FmService;->isInCountDownMode()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1237
    const v5, 0x7f0600e5

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1238
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1239
    const v3, 0x7f0600e6

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1240
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1250
    :goto_4
    invoke-virtual {p0, v9}, Lcom/android/fmradio/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1251
    iget-object v3, p0, Lcom/android/fmradio/FmRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    :cond_2
    move v1, v4

    .line 1206
    goto :goto_2

    .line 1219
    :cond_3
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1223
    :cond_4
    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1225
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1227
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-eq v5, v6, :cond_5

    .line 1228
    const/4 v5, -0x1

    iget v6, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    if-ne v5, v6, :cond_6

    .line 1229
    :cond_5
    invoke-interface {v2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1230
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1232
    :cond_6
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1242
    :cond_7
    const v5, 0x7f0600e5

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1244
    const v4, 0x7f0600e6

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1245
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1248
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    goto :goto_4

    .line 1188
    :pswitch_data_0
    .packed-switch 0x7f0600e0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1077
    const-string v0, "FmRx/Activity"

    const-string v1, "start FmRadioActivity.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    .line 1083
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1084
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissSearchDialog()V

    .line 1085
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissRenameDialog()V

    .line 1086
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissSwitchFreqDialog()V

    .line 1087
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissSleepTimeDialog()V

    .line 1091
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1095
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "end FmRadioActivity.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1097
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1175
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1035
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1036
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onResume start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z

    .line 1038
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    .line 1039
    iget v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V

    .line 1040
    iget v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->refreshRulerUI(I)V

    .line 1041
    iget v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I

    iget-boolean v1, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v0, v1}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    .line 1043
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v0, :cond_0

    .line 1044
    const-string v0, "FmRx/Activity"

    const-string v1, "service has not bind finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1046
    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V

    .line 1047
    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1054
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateMenuStatus()V

    .line 1051
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->updateDialogStatus()V

    .line 1052
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->checkNoAntennaDialogInOnResume()V

    .line 1053
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1514
    const/4 v1, 0x5

    .line 1515
    .local v1, "size":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1516
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "isInRecordingMode"

    iget-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1517
    const-string v2, "mPrevRecorderState"

    iget v3, p0, Lcom/android/fmradio/FmRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1520
    const-string v2, "mIsNeedShowSearchDlg"

    iget-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1521
    const-string v2, "mRecordState"

    iget v3, p0, Lcom/android/fmradio/FmRadioActivity;->mRecordState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1522
    const-string v2, "mIsPlaying"

    iget-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1523
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRetainNonConfigurationInstance() bundle:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1529
    const-string v0, "FmRx/Activity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1531
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 990
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 991
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 992
    const-string v1, "airplane_mode_on"

    .line 991
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 993
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Airplane mode is on, shut down fm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 995
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    .line 1027
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Fm is not allowed in call state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    goto :goto_0

    .line 1006
    :cond_1
    invoke-static {v2}, Lcom/android/fmradio/FmService;->setActivityIsOnStop(Z)V

    .line 1007
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onStart start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v0, Landroid/content/Intent;

    .line 1010
    const-class v1, Lcom/android/fmradio/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1011
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_2
    iput-boolean v3, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceStarted:Z

    .line 1016
    new-instance v0, Landroid/content/Intent;

    .line 1017
    const-class v1, Lcom/android/fmradio/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1016
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/fmradio/FmRadioActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1020
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_3

    .line 1021
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    goto :goto_0

    .line 1025
    :cond_3
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioActivity;->restoreConfiguration()V

    .line 1026
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onStart end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1105
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/fmradio/FmService;->setActivityIsOnStop(Z)V

    .line 1106
    const-string v0, "FmRx/Activity"

    const-string v1, "start FmRadioActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1109
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsServiceBinded:Z

    .line 1111
    :cond_0
    iput-boolean v2, p0, Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1112
    const-string v0, "FmRx/Activity"

    const-string v1, "end FmRadioActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1114
    return-void
.end method

.method public renameStationDone()V
    .locals 7

    .prologue
    .line 1776
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 1777
    const-string v6, "Rename"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1776
    check-cast v1, Lcom/android/fmradio/dialogs/RenameStationDialog;

    .line 1778
    .local v1, "dialogFragment":Lcom/android/fmradio/dialogs/RenameStationDialog;
    if-nez v1, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1782
    :cond_1
    invoke-virtual {v1}, Lcom/android/fmradio/dialogs/RenameStationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1783
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1787
    const v5, 0x7f06005d

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1788
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 1792
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1795
    .local v4, "newName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ltz v5, :cond_0

    .line 1800
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v3

    .line 1801
    .local v3, "freq":I
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/fmradio/FmStation;->isStationExist(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1802
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Lcom/android/fmradio/FmStation;->updateStationToDb(Landroid/content/Context;ILjava/lang/String;)V

    .line 1806
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V

    .line 1807
    iget-boolean v5, p0, Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z

    invoke-direct {p0, v3, v5}, Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V

    goto :goto_0

    .line 1804
    :cond_2
    iget-object v5, p0, Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 1660
    invoke-static {}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->newInstance()Lcom/android/fmradio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 1661
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1662
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1663
    return-void
.end method

.method public sleepTimeBegin(I)V
    .locals 6
    .param p1, "minutes"    # I

    .prologue
    .line 1820
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sleepTimeBegin.minutes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmRadioActivity;->mIsInCountDownMode:Z

    .line 1822
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    .line 1823
    const-string v0, "startCountDownTime"

    iget-wide v2, p0, Lcom/android/fmradio/FmRadioActivity;->mCountDownStopTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/fmradio/FmRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V

    .line 1824
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    .line 1825
    int-to-long v2, p1

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    .line 1824
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fmradio/FmService;->startCountingDownAsync(Ljava/lang/String;J)V

    .line 1826
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mSleepIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1827
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1828
    return-void
.end method

.method public switchFreqDone(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    .line 1811
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchFreqDone.frequency="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;

    if-nez v0, :cond_0

    .line 1813
    const-string v0, "FmRx/Activity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :goto_0
    return-void

    .line 1816
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRadioActivity;->tuneToStation(I)V

    goto :goto_0
.end method
