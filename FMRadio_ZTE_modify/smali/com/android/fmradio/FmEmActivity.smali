.class public Lcom/android/fmradio/FmEmActivity;
.super Landroid/app/Activity;
.source "FmEmActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field private static final MSGID_INIT_OK:I = 0x7

.field private static final MSGID_OK:I = 0x1

.field private static final MSGID_POWERUP:I = 0x8

.field private static final MSGID_TICK_EVENT:I = 0x6

.field private static final MSGID_TUNE_FNISHED:I = 0x9

.field private static final MSGID_UPDATE_CURRENT_STATION:I = 0x3

.field private static final MSGID_UPDATE_RDS:I = 0x2

.field private static final RDS_BLER_STRING:Ljava/lang/String; = "RDS_BLER_STRING"

.field private static final RDS_CAPARRAY_STRING:Ljava/lang/String; = "RDS_CAPARRAY_STRING"

.field private static final RDS_RSSI_STRING:Ljava/lang/String; = "RDS_RSSI_STRING"

.field private static final RDS_STEREMONO_STRING:Ljava/lang/String; = "RDS_STEREMONO_STRING"

.field public static final TAG:Ljava/lang/String; = "FmRx/EM"

.field private static final TYPE_MSGID:Ljava/lang/String; = "MSGID"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonCMD:Landroid/widget/Button;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonDesenseRssi:Landroid/widget/Button;

.field private mButtonMuteGain:Landroid/widget/Button;

.field private mButtonRssiThreshold:Landroid/widget/Button;

.field private mButtonTune:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mEditCMD0:Landroid/widget/EditText;

.field private mEditCMD1:Landroid/widget/EditText;

.field private mEditCMD10:Landroid/widget/EditText;

.field private mEditCMD11:Landroid/widget/EditText;

.field private mEditCMD12:Landroid/widget/EditText;

.field private mEditCMD13:Landroid/widget/EditText;

.field private mEditCMD14:Landroid/widget/EditText;

.field private mEditCMD15:Landroid/widget/EditText;

.field private mEditCMD16:Landroid/widget/EditText;

.field private mEditCMD17:Landroid/widget/EditText;

.field private mEditCMD18:Landroid/widget/EditText;

.field private mEditCMD19:Landroid/widget/EditText;

.field private mEditCMD2:Landroid/widget/EditText;

.field private mEditCMD3:Landroid/widget/EditText;

.field private mEditCMD4:Landroid/widget/EditText;

.field private mEditCMD5:Landroid/widget/EditText;

.field private mEditCMD6:Landroid/widget/EditText;

.field private mEditCMD7:Landroid/widget/EditText;

.field private mEditCMD8:Landroid/widget/EditText;

.field private mEditCMD9:Landroid/widget/EditText;

.field private mEditDesenseRssi:Landroid/widget/EditText;

.field private mEditFreq:Landroid/widget/EditText;

.field private mEditMuteGain:Landroid/widget/EditText;

.field private mEditRssiThreshold:Landroid/widget/EditText;

.field private mFmListener:Lcom/android/fmradio/FmListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

.field private mIsDestroying:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mIsTickEventExit:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mRdAntennaL:Landroid/widget/RadioButton;

.field private mRdAntennaS:Landroid/widget/RadioButton;

.field private mRdMono:Landroid/widget/RadioButton;

.field private mRdStereo:Landroid/widget/RadioButton;

.field private mRgAntenna:Landroid/widget/RadioGroup;

.field private mService:Lcom/android/fmradio/FmService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextCMDReturn0:Landroid/widget/TextView;

.field private mTextCMDReturn1:Landroid/widget/TextView;

.field private mTextCMDReturn2:Landroid/widget/TextView;

.field private mTextCMDReturn3:Landroid/widget/TextView;

.field private mTextCMDReturn4:Landroid/widget/TextView;

.field private mTextCapArray:Landroid/widget/TextView;

.field private mTextChipID:Landroid/widget/TextView;

.field private mTextDSPVersion:Landroid/widget/TextView;

.field private mTextECOVersion:Landroid/widget/TextView;

.field private mTextPatchVersion:Landroid/widget/TextView;

.field private mTextRdsBler:Landroid/widget/TextView;

.field private mTextRdsPS:Landroid/widget/TextView;

.field private mTextRdsRT:Landroid/widget/TextView;

.field private mTextRssi:Landroid/widget/TextView;

.field private mTextStereoMono:Landroid/widget/TextView;

.field private mTickEventThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsServiceStarted:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsServiceBinded:Z

    .line 85
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    .line 87
    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsDestroying:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsTickEventExit:Z

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mPSString:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mLRTextString:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRssi:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 100
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 102
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 103
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextChipID:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 106
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 107
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn0:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn1:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn2:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn3:Landroid/widget/TextView;

    .line 111
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn4:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;

    .line 114
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditRssiThreshold:Landroid/widget/EditText;

    .line 115
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditMuteGain:Landroid/widget/EditText;

    .line 116
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditDesenseRssi:Landroid/widget/EditText;

    .line 117
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD0:Landroid/widget/EditText;

    .line 118
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD1:Landroid/widget/EditText;

    .line 119
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD2:Landroid/widget/EditText;

    .line 120
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD3:Landroid/widget/EditText;

    .line 121
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD4:Landroid/widget/EditText;

    .line 122
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD5:Landroid/widget/EditText;

    .line 123
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD6:Landroid/widget/EditText;

    .line 124
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD7:Landroid/widget/EditText;

    .line 125
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD8:Landroid/widget/EditText;

    .line 126
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD9:Landroid/widget/EditText;

    .line 127
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD10:Landroid/widget/EditText;

    .line 128
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD11:Landroid/widget/EditText;

    .line 129
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD12:Landroid/widget/EditText;

    .line 130
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD13:Landroid/widget/EditText;

    .line 131
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD14:Landroid/widget/EditText;

    .line 132
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD15:Landroid/widget/EditText;

    .line 133
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD16:Landroid/widget/EditText;

    .line 134
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD17:Landroid/widget/EditText;

    .line 135
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD18:Landroid/widget/EditText;

    .line 136
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD19:Landroid/widget/EditText;

    .line 137
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonRssiThreshold:Landroid/widget/Button;

    .line 138
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonMuteGain:Landroid/widget/Button;

    .line 139
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonDesenseRssi:Landroid/widget/Button;

    .line 140
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonCMD:Landroid/widget/Button;

    .line 141
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;

    .line 142
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 143
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 144
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 145
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 146
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 147
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mContext:Landroid/content/Context;

    .line 148
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTickEventThread:Ljava/lang/Thread;

    .line 152
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I

    .line 153
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 154
    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    .line 178
    new-instance v0, Lcom/android/fmradio/FmEmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmEmActivity$1;-><init>(Lcom/android/fmradio/FmEmActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 373
    new-instance v0, Lcom/android/fmradio/FmEmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmEmActivity$2;-><init>(Lcom/android/fmradio/FmEmActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    .line 477
    new-instance v0, Lcom/android/fmradio/FmEmActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmEmActivity$3;-><init>(Lcom/android/fmradio/FmEmActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 554
    new-instance v0, Lcom/android/fmradio/FmEmActivity$4;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmEmActivity$4;-><init>(Lcom/android/fmradio/FmEmActivity;)V

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/fmradio/FmEmActivity;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$10(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonMuteGain:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD0:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD4:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD5:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD6:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$18(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD7:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$19(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD8:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$20(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD9:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$21(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD10:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$22(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD11:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$23(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD12:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$24(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD13:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$25(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD14:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$26(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD15:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$27(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD16:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$28(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD17:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$29(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD18:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/fmradio/FmEmActivity;I)V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmEmActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD19:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$31(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn0:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$34(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$37(Lcom/android/fmradio/FmEmActivity;Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    return-void
.end method

.method static synthetic access$38(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmListener;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    return-object v0
.end method

.method static synthetic access$39(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->isServiceInited()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditRssiThreshold:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$40(Lcom/android/fmradio/FmEmActivity;I)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmEmActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$41(Lcom/android/fmradio/FmEmActivity;Z)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmEmActivity;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$42(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$43(Lcom/android/fmradio/FmEmActivity;)I
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$44(Lcom/android/fmradio/FmEmActivity;I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I

    return-void
.end method

.method static synthetic access$45(Lcom/android/fmradio/FmEmActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$46(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$47(Lcom/android/fmradio/FmEmActivity;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$48(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$49(Lcom/android/fmradio/FmEmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonRssiThreshold:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$50(Lcom/android/fmradio/FmEmActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity;->mPSString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$51(Lcom/android/fmradio/FmEmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52(Lcom/android/fmradio/FmEmActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity;->mLRTextString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$54(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextChipID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$55(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextECOVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$56(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextPatchVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$57(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextDSPVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$58(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsBler:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$59(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRssi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    return-object v0
.end method

.method static synthetic access$60(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextStereoMono:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$61(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCapArray:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$62(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->isSpeakerUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$63(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$64(Lcom/android/fmradio/FmEmActivity;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$65(Lcom/android/fmradio/FmEmActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsTickEventExit:Z

    return v0
.end method

.method static synthetic access$66(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$67(Lcom/android/fmradio/FmEmActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmEmActivity;->formatCapArray(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditDesenseRssi:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonDesenseRssi:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditMuteGain:Landroid/widget/EditText;

    return-object v0
.end method

.method private formatCapArray(I)Ljava/lang/String;
    .locals 9
    .param p1, "raw"    # I

    .prologue
    const/4 v8, 0x1

    .line 629
    const/16 v4, 0x8

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 631
    .local v2, "pF":[F
    const/4 v3, 0x0

    .line 632
    .local v3, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 636
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 633
    :cond_0
    const/4 v0, 0x6

    .line 634
    .local v0, "base":I
    float-to-double v6, v3

    add-int/lit8 v4, v1, 0x6

    shr-int v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_1

    aget v4, v2, v1

    float-to-double v4, v4

    :goto_1
    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 629
    :array_0
    .array-data 4
        0x3e29fbe7    # 0.166f
        0x3ea9fbe7    # 0.332f
        0x3f29fbe7    # 0.664f
        0x3faa3d71    # 1.33f
        0x402a3d71    # 2.66f
        0x40a9eb85    # 5.31f
        0x4129999a    # 10.6f
        0x4194cccd    # 18.6f
    .end array-data
.end method

.method private getFrequency()I
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getFrequency()I

    move-result v0

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getRtText()Ljava/lang/String;

    move-result-object v0

    .line 842
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getPs()Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initService(I)V
    .locals 1
    .param p1, "iCurrentStation"    # I

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FmService;->initService(I)V

    .line 863
    :cond_0
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isDeviceOpen()Z

    move-result v0

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "bRet":Z
    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    sget v3, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 828
    :cond_0
    return v1
.end method

.method private isRdsSupported()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isRdsSupported()Z

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceInited()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isServiceInited()Z

    move-result v0

    .line 869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeakerUsed()Z
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->isSpeakerUsed()Z

    move-result v0

    .line 856
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 723
    if-nez p1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextStereoMono:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRssi:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextCapArray:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsBler:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsPS:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsRT:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I

    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 732
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showRDS()V
    .locals 3

    .prologue
    .line 747
    const-string v0, "FmRx/EM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmEmActivity.showRDS PS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RT :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsPS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsRT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    return-void
.end method

.method private stopTickEventThread()V
    .locals 2

    .prologue
    .line 1030
    const-string v0, "FmRx/EM"

    const-string v1, ">>> stopTickEventThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTickEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsTickEventExit:Z

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mTickEventThread:Ljava/lang/Thread;

    .line 1035
    :cond_0
    const-string v0, "FmRx/EM"

    const-string v1, "<<< stopTickEventThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return-void
.end method

.method private tuneToStation(I)V
    .locals 2
    .param p1, "iStation"    # I

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-static {p1}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->tuneStationAsync(F)V

    .line 719
    return-void
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/fmradio/FmEmActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 758
    .local v1, "hardwareVersion":[I
    const/4 v0, 0x0

    .line 759
    .local v0, "chipId":I
    if-eqz v1, :cond_0

    .line 760
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 762
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmEmActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDspVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/android/fmradio/FmEmActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 808
    .local v1, "hardwareVersion":[I
    const/4 v0, 0x0

    .line 809
    .local v0, "dspVersion":I
    if-eqz v1, :cond_0

    .line 810
    const/4 v2, 0x2

    aget v0, v1, v2

    .line 812
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmEmActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getEcoVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/fmradio/FmEmActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 771
    .local v1, "hardwareVersion":[I
    const/4 v0, 0x0

    .line 772
    .local v0, "ecoVersion":I
    if-eqz v1, :cond_0

    .line 773
    const/4 v2, 0x1

    aget v0, v1, v2

    .line 775
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmEmActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHardwareVersion()[I
    .locals 4

    .prologue
    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "hardwareVersion":[I
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->getHardwareVersion()[I

    move-result-object v0

    .line 962
    :cond_0
    const-string v1, "FmRx/EM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHardwareversion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-object v0
.end method

.method public getPatchVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/fmradio/FmEmActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 784
    .local v1, "hardwareVersion":[I
    const/4 v5, 0x0

    .line 785
    .local v5, "patchVersion":I
    if-eqz v1, :cond_0

    .line 786
    const/4 v6, 0x3

    .line 787
    .local v6, "patchVersionPosition":I
    const/4 v7, 0x3

    aget v5, v1, v7

    .line 789
    .end local v6    # "patchVersionPosition":I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/fmradio/FmEmActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 790
    .local v4, "patchStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 791
    .local v3, "patch":F
    if-eqz v4, :cond_1

    .line 793
    const/16 v2, 0x64

    .line 794
    .local v2, "hundred":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v3, v7, v8

    .line 799
    .end local v2    # "hundred":I
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 795
    .restart local v2    # "hundred":I
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getStereoMono()Z

    move-result v0

    .line 909
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "convertData"    # I

    .prologue
    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    .local v3, "temp":Ljava/lang/StringBuilder;
    move v1, p1

    .line 974
    .local v1, "quotient":I
    const/4 v2, 0x0

    .line 975
    .local v2, "remainder":I
    :goto_0
    if-gtz v1, :cond_0

    .line 981
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 976
    :cond_0
    const/16 v0, 0x10

    .line 977
    .local v0, "hexadecimal":I
    rem-int/lit8 v2, v1, 0x10

    .line 978
    div-int/lit8 v1, v1, 0x10

    .line 979
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 390
    const-string v1, "FmRx/EM"

    const-string v2, "begin FmEmActivity.onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 393
    const v1, 0x7f03004a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 395
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mContext:Landroid/content/Context;

    .line 398
    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 399
    const v1, 0x7f06007d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRssi:Landroid/widget/TextView;

    .line 400
    const v1, 0x7f06007e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 401
    const v1, 0x7f06007f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 402
    const v1, 0x7f060080

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 403
    const v1, 0x7f060081

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 404
    const v1, 0x7f060082

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextChipID:Landroid/widget/TextView;

    .line 405
    const v1, 0x7f060083

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 406
    const v1, 0x7f060084

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 407
    const v1, 0x7f060085

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 408
    const v1, 0x7f0600a1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn0:Landroid/widget/TextView;

    .line 409
    const v1, 0x7f0600a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn1:Landroid/widget/TextView;

    .line 410
    const v1, 0x7f0600a3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn2:Landroid/widget/TextView;

    .line 411
    const v1, 0x7f0600a4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn3:Landroid/widget/TextView;

    .line 412
    const v1, 0x7f0600a5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTextCMDReturn4:Landroid/widget/TextView;

    .line 413
    const v1, 0x7f060074

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditFreq:Landroid/widget/EditText;

    .line 414
    const v1, 0x7f060086

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditRssiThreshold:Landroid/widget/EditText;

    .line 415
    const v1, 0x7f060088

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditMuteGain:Landroid/widget/EditText;

    .line 416
    const v1, 0x7f06008a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditDesenseRssi:Landroid/widget/EditText;

    .line 417
    const v1, 0x7f06008c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD0:Landroid/widget/EditText;

    .line 418
    const v1, 0x7f06008d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD1:Landroid/widget/EditText;

    .line 419
    const v1, 0x7f06008e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD2:Landroid/widget/EditText;

    .line 420
    const v1, 0x7f06008f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD3:Landroid/widget/EditText;

    .line 421
    const v1, 0x7f060090

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD4:Landroid/widget/EditText;

    .line 422
    const v1, 0x7f060091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD5:Landroid/widget/EditText;

    .line 423
    const v1, 0x7f060092

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD6:Landroid/widget/EditText;

    .line 424
    const v1, 0x7f060093

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD7:Landroid/widget/EditText;

    .line 425
    const v1, 0x7f060094

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD8:Landroid/widget/EditText;

    .line 426
    const v1, 0x7f060095

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD9:Landroid/widget/EditText;

    .line 427
    const v1, 0x7f060096

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD10:Landroid/widget/EditText;

    .line 428
    const v1, 0x7f060097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD11:Landroid/widget/EditText;

    .line 429
    const v1, 0x7f060098

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD12:Landroid/widget/EditText;

    .line 430
    const v1, 0x7f060099

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD13:Landroid/widget/EditText;

    .line 431
    const v1, 0x7f06009a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD14:Landroid/widget/EditText;

    .line 432
    const v1, 0x7f06009b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD15:Landroid/widget/EditText;

    .line 433
    const v1, 0x7f06009c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD16:Landroid/widget/EditText;

    .line 434
    const v1, 0x7f06009d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD17:Landroid/widget/EditText;

    .line 435
    const v1, 0x7f06009e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD18:Landroid/widget/EditText;

    .line 436
    const v1, 0x7f06009f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mEditCMD19:Landroid/widget/EditText;

    .line 438
    const v1, 0x7f060087

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonRssiThreshold:Landroid/widget/Button;

    .line 439
    const v1, 0x7f060089

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonMuteGain:Landroid/widget/Button;

    .line 440
    const v1, 0x7f06008b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonDesenseRssi:Landroid/widget/Button;

    .line 441
    const v1, 0x7f0600a0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonCMD:Landroid/widget/Button;

    .line 443
    const v1, 0x7f060075

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;

    .line 444
    const v1, 0x7f060077

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 445
    const v1, 0x7f060078

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 446
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 447
    const v1, 0x7f06007a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 448
    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 450
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdStereo:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mRdMono:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonTune:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonRssiThreshold:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonMuteGain:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonDesenseRssi:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mButtonCMD:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 462
    .local v0, "filterHeadset":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    new-instance v1, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;-><init>(Lcom/android/fmradio/FmEmActivity;Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;)V

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    .line 464
    const-string v1, "FmRx/EM"

    const-string v2, "Register HeadsetConnectionReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I

    .line 469
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 470
    iget-boolean v1, p0, Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmEmActivity;->refreshTextStatus(Z)V

    .line 471
    const-string v1, "FmRx/EM"

    const-string v2, "end FmEmActivity.onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    const-string v0, "FmRx/EM"

    const-string v1, ">>> FmEmActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsDestroying:Z

    .line 689
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "FmRx/EM"

    const-string v1, "Unregister headset broadcast receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmEmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 693
    iput-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mHeadsetConnectionReceiver:Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 697
    const-string v0, "FmRx/EM"

    const-string v1, "FM is Playing. So stop it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->powerDownAsync()V

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmService;->unregisterFmRadioListener(Lcom/android/fmradio/FmListener;)V

    .line 705
    :cond_2
    iput-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    .line 706
    iput-object v2, p0, Lcom/android/fmradio/FmEmActivity;->mFmListener:Lcom/android/fmradio/FmListener;

    .line 709
    const-string v0, "FmRx/EM"

    const-string v1, "<<< FmEmActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 711
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    invoke-direct {p0}, Lcom/android/fmradio/FmEmActivity;->stopTickEventThread()V

    .line 669
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 670
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 657
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 660
    invoke-virtual {p0}, Lcom/android/fmradio/FmEmActivity;->readTickEvent()V

    .line 661
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 739
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 740
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fmradio/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    .line 642
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/fmradio/FmEmActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsServiceBinded:Z

    .line 645
    iget-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    .line 646
    const-string v0, "FmRx/EM"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p0}, Lcom/android/fmradio/FmEmActivity;->finish()V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    const-string v0, "FmRx/EM"

    const-string v1, "Bind FM service successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 674
    const-string v0, "FmRx/EM"

    const-string v1, "start FMRadioActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmEmActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmEmActivity;->mIsServiceBinded:Z

    .line 679
    :cond_0
    const-string v0, "FmRx/EM"

    const-string v1, "end FMRadioActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 681
    return-void
.end method

.method public readCapArray()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getCapArray()I

    move-result v0

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRdsBler()I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getRdsBler()I

    move-result v0

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRssi()I
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->getRssi()I

    move-result v0

    .line 898
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readTickEvent()V
    .locals 3

    .prologue
    .line 985
    const/16 v0, 0x3e8

    .line 987
    .local v0, "interval":I
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTickEventThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 990
    :cond_0
    new-instance v1, Lcom/android/fmradio/FmEmActivity$5;

    invoke-direct {v1, p0}, Lcom/android/fmradio/FmEmActivity$5;-><init>(Lcom/android/fmradio/FmEmActivity;)V

    iput-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTickEventThread:Ljava/lang/Thread;

    .line 1025
    const-string v1, "FmRx/EM"

    const-string v2, "Start tick event Thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity;->mTickEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setStereoMono(Z)V
    .locals 1
    .param p1, "isMono"    # Z

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FmService;->setStereoMono(Z)Z

    .line 923
    return-void
.end method

.method public switchAntenna(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;

    invoke-virtual {v0, p1}, Lcom/android/fmradio/FmService;->switchAntennaAsync(I)V

    .line 938
    return-void
.end method
