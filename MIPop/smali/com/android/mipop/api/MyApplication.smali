.class public Lcom/android/mipop/api/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static final CURRENT_STANDBY_TIME:Ljava/lang/String; = "current_standby_time"

.field private static final DOWN_KEY:Ljava/lang/String; = "DOWN_KEY"

.field public static final FULL_SCREEN_FIRST_IN:Ljava/lang/String; = "full_fcreen_first_in"

.field public static final FULL_SCREEN_SHOT_CICKED:Ljava/lang/String; = "full_fcreen_shot_clicked"

.field public static final HAS_NAVBAR:Ljava/lang/String; = "show"

.field public static final HIDE:I = 0x0

.field private static final LEFT_KEY:Ljava/lang/String; = "LEFT_KEY"

.field private static final MID_KEY:Ljava/lang/String; = "MID_KEY"

.field public static final MIPOP_CLICK_TIMES:Ljava/lang/String; = "mipop_click_times"

.field public static final MIPOP_LONG_CLICKED:Ljava/lang/String; = "mipop_long_clicked"

.field public static final MIPOP_LONG_CLICKED_FIRST:Ljava/lang/String; = "mipop_long_clicked_operater_first"

.field public static final NAVBAR_KEY:Ljava/lang/String; = "showNavigationBar"

.field public static final NO_NAVBAR:Ljava/lang/String; = "hide"

.field private static final RIGHT_KEY:Ljava/lang/String; = "RIGHT_KEY"

.field public static final SCERRN_SHOT_FIRST_IN:Ljava/lang/String; = "screen_shot_first_in"

.field public static final SHOW:I = 0x1

.field public static final STANDBY_TIME_HAS_LAST_REMIND:Ljava/lang/String; = "standby_time_has_last_remind"

.field private static final UP_KEY:Ljava/lang/String; = "UP_KEY"

.field private static mBackButton:Lcom/android/mipop/widget/MeterBack;

.field public static mBeforeInputViewShow:Z

.field private static mBeforeInputViewY:I

.field private static mFullscreenHide:Z

.field private static mHomeButton:Lcom/android/mipop/widget/MeterHome;

.field private static mInstance:Lcom/android/mipop/api/MyApplication;

.field private static mKeyguardButton:Lcom/android/mipop/widget/MeterKeyguard;

.field private static mMenuButton:Lcom/android/mipop/widget/MeterMenu;

.field private static mRecentButton:Lcom/android/mipop/widget/MeterRecent;


# instance fields
.field private final DBG:Z

.field public final LONG_BACK_SWITCH_FEATURE:Z

.field RadioReceiver:Landroid/content/BroadcastReceiver;

.field private TAG:Ljava/lang/String;

.field private mDownKeyChangeObserver:Landroid/database/ContentObserver;

.field private mFirstKeyObserver:Landroid/database/ContentObserver;

.field private mFullScreenObserver:Landroid/database/ContentObserver;

.field private mLeftKeyChangeObserver:Landroid/database/ContentObserver;

.field private mMidKeyChangeObserver:Landroid/database/ContentObserver;

.field private mMipopObserver:Landroid/database/ContentObserver;

.field private mRightKeyChangeObserver:Landroid/database/ContentObserver;

.field private mUpKeyChangeObserver:Landroid/database/ContentObserver;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/android/mipop/api/MyApplication;->mMenuButton:Lcom/android/mipop/widget/MeterMenu;

    .line 61
    sput-object v0, Lcom/android/mipop/api/MyApplication;->mRecentButton:Lcom/android/mipop/widget/MeterRecent;

    .line 62
    sput-object v0, Lcom/android/mipop/api/MyApplication;->mHomeButton:Lcom/android/mipop/widget/MeterHome;

    .line 63
    sput-object v0, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    .line 64
    sput-object v0, Lcom/android/mipop/api/MyApplication;->mKeyguardButton:Lcom/android/mipop/widget/MeterKeyguard;

    .line 101
    sput-object v0, Lcom/android/mipop/api/MyApplication;->mInstance:Lcom/android/mipop/api/MyApplication;

    .line 104
    sput-boolean v1, Lcom/android/mipop/api/MyApplication;->mFullscreenHide:Z

    .line 106
    sput v1, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewY:I

    .line 108
    sput-boolean v1, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 57
    const-string v0, "Suhao.MyApplication"

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/android/mipop/api/MyApplication;->DBG:Z

    .line 67
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 103
    iput-boolean v1, p0, Lcom/android/mipop/api/MyApplication;->LONG_BACK_SWITCH_FEATURE:Z

    .line 113
    new-instance v0, Lcom/android/mipop/api/MyApplication$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$1;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mMipopObserver:Landroid/database/ContentObserver;

    .line 122
    new-instance v0, Lcom/android/mipop/api/MyApplication$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$2;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mFullScreenObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/mipop/api/MyApplication$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$3;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mFirstKeyObserver:Landroid/database/ContentObserver;

    .line 160
    new-instance v0, Lcom/android/mipop/api/MyApplication$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$4;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mUpKeyChangeObserver:Landroid/database/ContentObserver;

    .line 170
    new-instance v0, Lcom/android/mipop/api/MyApplication$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$5;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mLeftKeyChangeObserver:Landroid/database/ContentObserver;

    .line 180
    new-instance v0, Lcom/android/mipop/api/MyApplication$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$6;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mMidKeyChangeObserver:Landroid/database/ContentObserver;

    .line 190
    new-instance v0, Lcom/android/mipop/api/MyApplication$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$7;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mRightKeyChangeObserver:Landroid/database/ContentObserver;

    .line 200
    new-instance v0, Lcom/android/mipop/api/MyApplication$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/api/MyApplication$8;-><init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->mDownKeyChangeObserver:Landroid/database/ContentObserver;

    .line 558
    new-instance v0, Lcom/android/mipop/api/MyApplication$9;

    invoke-direct {v0, p0}, Lcom/android/mipop/api/MyApplication$9;-><init>(Lcom/android/mipop/api/MyApplication;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->RadioReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mipop/api/MyApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->updateMipopStatusByDb()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mipop/api/MyApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->updateSmartRemindDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mipop/api/MyApplication;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->fullScreenHideMipop(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mipop/api/MyApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->fullScreenRemindDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mipop/api/MyApplication;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->taskAsigned(Landroid/content/Intent;)V

    return-void
.end method

.method private fullScreenHideMipop(Z)V
    .locals 7
    .param p1, "isFull"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 593
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 606
    .local v0, "mipopContent":I
    if-eq v0, v5, :cond_0

    sget-boolean v1, Lcom/android/mipop/api/MyApplication;->mFullscreenHide:Z

    if-eqz v1, :cond_1

    .line 607
    :cond_0
    if-eqz p1, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    sput-boolean v5, Lcom/android/mipop/api/MyApplication;->mFullscreenHide:Z

    .line 623
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    sget-boolean v1, Lcom/android/mipop/api/MyApplication;->mFullscreenHide:Z

    if-eqz v1, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    :cond_3
    sput-boolean v6, Lcom/android/mipop/api/MyApplication;->mFullscreenHide:Z

    goto :goto_0
.end method

.method private fullScreenRemindDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 663
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 665
    .local v2, "mPreference":Landroid/content/SharedPreferences;
    const-string v5, "full_fcreen_first_in"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 667
    .local v4, "mfirstIn":Z
    const-string v5, "full_fcreen_shot_clicked"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 670
    .local v3, "mScreenShotClicked":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mfirstIn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mScreenShotClicked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    .line 672
    if-eqz v3, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    if-nez v4, :cond_0

    .line 675
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/mipop/api/MyApplication;->showSmartRemindDialog(I)V

    .line 678
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 680
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "full_fcreen_first_in"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mipop/api/MyApplication;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/android/mipop/api/MyApplication;->mInstance:Lcom/android/mipop/api/MyApplication;

    return-object v0
.end method

.method private inputmethodHide()V
    .locals 2

    .prologue
    .line 646
    const-string v0, "Suhao.Input"

    const-string v1, "app: inputmethodHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getMipopStatus()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 649
    sget-object v0, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sget v0, Lcom/android/mipop/widget/MeterBack;->baseY:I

    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    .line 650
    sget-object v0, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sget v0, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewY:I

    sput v0, Lcom/android/mipop/widget/MeterBack;->baseY:I

    .line 651
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewShow:Z

    .line 652
    sget v0, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewY:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 653
    sget-object v0, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sget v0, Lcom/android/mipop/widget/MeterBack;->baseX:I

    sget v1, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateBack(II)V

    .line 657
    :cond_0
    return-void
.end method

.method private inputmethodShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 630
    const-string v1, "Suhao.Input"

    const-string v2, "app: inputmethodShow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getMipopStatus()I

    move-result v1

    if-ne v3, v1, :cond_0

    sget-boolean v1, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewShow:Z

    if-nez v1, :cond_0

    .line 633
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v0, v1, 0x5

    .line 634
    .local v0, "orderY":I
    const-string v1, "Suhao.Input"

    const-string v2, "app: inputmethodShow mipop show=true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget-object v1, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sget v1, Lcom/android/mipop/widget/MeterBack;->baseY:I

    sput v1, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewY:I

    .line 637
    sput-boolean v3, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewShow:Z

    .line 638
    sget-object v1, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sput v0, Lcom/android/mipop/widget/MeterBack;->baseY:I

    .line 639
    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 640
    sget-object v1, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sget v1, Lcom/android/mipop/widget/MeterBack;->baseX:I

    invoke-static {v1, v0}, Lcom/android/mipop/animation/AnimationParking;->updateBack(II)V

    .line 642
    .end local v0    # "orderY":I
    :cond_0
    return-void
.end method

.method private static isAddKey()Z
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterBase;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterBase;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterBase;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterBase;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method private taskAsigned(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 573
    const-string v1, "MyAppWidget"

    const-string v2, "app: taskAsigned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ONSTARTINPUTVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->inputmethodShow()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const-string v1, "android.intent.action.ONHIDEINPUTVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->inputmethodHide()V

    goto :goto_0

    .line 584
    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method private updateMipopStatusByDb()V
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getMipopStatus()I

    move-result v0

    .line 414
    .local v0, "mipopContent":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->showMipopLocal()V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->hideMipopAndShowNavabar()V

    goto :goto_0
.end method

.method private updateNaviBarStatusByDb()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 428
    invoke-static {}, Lcom/android/mipop/api/XmlParseUtils;->IsMipopOn()I

    move-result v0

    .line 429
    .local v0, "isMipopOn":I
    if-le v0, v4, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MIPOP"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 436
    .local v1, "mipopContent":I
    if-ne v4, v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->showMipopLocal()V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->hideMipop()V

    goto :goto_0
.end method

.method private updateSmartRemindDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 687
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 689
    .local v2, "mPreference":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 691
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "back_Key_Long_press_first"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 693
    .local v3, "mfirstLongPress":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSmartRemindDialog-- mfirstLongPress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    .line 695
    invoke-static {}, Lcom/android/mipop/MIPopActivity;->getInstance()Lcom/android/mipop/MIPopActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 696
    if-nez v3, :cond_0

    .line 697
    invoke-virtual {p0, v6}, Lcom/android/mipop/api/MyApplication;->showSmartRemindDialog(I)V

    .line 698
    const-string v4, "back_Key_Long_press_first"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSmartRemindDialog getMiPopIsClicked()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mipop/MIPopActivity;->getInstance()Lcom/android/mipop/MIPopActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mipop/MIPopActivity;->getMiPopIsClicked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mfirstLongPress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/android/mipop/MIPopActivity;->getInstance()Lcom/android/mipop/MIPopActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mipop/MIPopActivity;->getMiPopIsClicked()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 709
    invoke-virtual {p0, v6}, Lcom/android/mipop/api/MyApplication;->showSmartRemindDialog(I)V

    .line 710
    const-string v4, "back_Key_Long_press_first"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 713
    :cond_2
    invoke-static {}, Lcom/android/mipop/MIPopActivity;->getInstance()Lcom/android/mipop/MIPopActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/mipop/MIPopActivity;->setMiPopIsClicked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public IsLocalProject()I
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/android/mipop/api/XmlParseUtils;->IsLocalProject()I

    move-result v0

    return v0
.end method

.method public getMipopStatus()I
    .locals 4

    .prologue
    .line 390
    invoke-static {}, Lcom/android/mipop/api/XmlParseUtils;->IsMipopOn()I

    move-result v0

    .line 391
    .local v0, "isMipopOn":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MIPOP"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 397
    .local v1, "mipopStatus":I
    return v1
.end method

.method public getMywmParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getNaviBarStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "showNavigationBar"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "NaviBarShow":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 374
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/XmlParseUtils;->IsSoftNavibarOn()I

    move-result v1

    .line 375
    .local v1, "isSoftNaviOn":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090551

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .end local v1    # "isSoftNaviOn":I
    :cond_1
    :goto_0
    return-object v0

    .line 378
    .restart local v1    # "isSoftNaviOn":I
    :cond_2
    if-nez v1, :cond_3

    .line 379
    const-string v0, "hide"

    goto :goto_0

    .line 381
    :cond_3
    const-string v0, "show"

    goto :goto_0
.end method

.method public hasPhysicKeyboard()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 232
    const/4 v2, 0x1

    .line 236
    .local v2, "hasSoftwareNavigationBar":Z
    :try_start_0
    const-class v5, Lcom/android/internal/R$bool;

    const-string v8, "config_showNavigationBar"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 239
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 240
    .local v4, "resId":I
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 254
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "resId":I
    :goto_0
    const-string v5, "qemu.hw.mainkeys"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "navBarOverride":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    const/4 v2, 0x0

    .line 262
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasPhysicKeyboard() = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    .line 263
    if-nez v2, :cond_3

    :goto_3
    return v6

    .line 241
    .end local v3    # "navBarOverride":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "navBarOverride":Ljava/lang/String;
    :cond_1
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    .line 262
    goto :goto_2

    :cond_3
    move v6, v7

    .line 263
    goto :goto_3
.end method

.method public hideMipop()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 494
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 495
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 496
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 497
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 498
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 499
    return-void
.end method

.method public hideMipopAndShowNavabar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 503
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 504
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 505
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 506
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 507
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 508
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "showNavigationBar"

    const-string v2, "show"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    return-void
.end method

.method public hideMipopForce()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 517
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 518
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->stop()V

    .line 519
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mipop/widget/MeterBase;->setStopAnimationParking(Z)V

    .line 521
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 522
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 523
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 524
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 525
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 526
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 290
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 291
    const-string v1, "MyAppWidget"

    const-string v2, "app receiver register"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sput-object p0, Lcom/android/mipop/api/MyApplication;->mInstance:Lcom/android/mipop/api/MyApplication;

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ONSTARTINPUTVIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "android.intent.action.ONHIDEINPUTVIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/api/MyApplication;->RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->mMipopObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->hasPhysicKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "IsFullScreen"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mipop/api/MyApplication;->mFullScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "UP_KEY"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->mUpKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LEFT_KEY"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->mLeftKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MID_KEY"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->mMidKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "RIGHT_KEY"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->mRightKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DOWN_KEY"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication;->mDownKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg isAddKey() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->isAddKey()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->isAddKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v1}, Lcom/android/mipop/widget/MeterBase;->removeView()V

    .line 327
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v1}, Lcom/android/mipop/widget/MeterBase;->removeView()V

    .line 328
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v1}, Lcom/android/mipop/widget/MeterBase;->removeView()V

    .line 329
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v1}, Lcom/android/mipop/widget/MeterBase;->removeView()V

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mipop/widget/Until;->initialPop(Landroid/content/Context;)V

    .line 335
    new-instance v1, Lcom/android/mipop/widget/MeterMenu;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mipop/widget/MeterMenu;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mipop/api/MyApplication;->mMenuButton:Lcom/android/mipop/widget/MeterMenu;

    .line 336
    new-instance v1, Lcom/android/mipop/widget/MeterRecent;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mipop/widget/MeterRecent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mipop/api/MyApplication;->mRecentButton:Lcom/android/mipop/widget/MeterRecent;

    .line 337
    new-instance v1, Lcom/android/mipop/widget/MeterHome;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mipop/widget/MeterHome;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mipop/api/MyApplication;->mHomeButton:Lcom/android/mipop/widget/MeterHome;

    .line 338
    new-instance v1, Lcom/android/mipop/widget/MeterBack;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mipop/widget/MeterBack;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    .line 339
    new-instance v1, Lcom/android/mipop/widget/MeterKeyguard;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mipop/widget/MeterKeyguard;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mipop/api/MyApplication;->mKeyguardButton:Lcom/android/mipop/widget/MeterKeyguard;

    .line 340
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->updateMipopStatusByDb()V

    .line 349
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mMipopObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mUpKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mLeftKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mMidKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mRightKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mDownKeyChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->hasPhysicKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/api/MyApplication;->mFullScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 285
    :cond_0
    return-void
.end method

.method public showMipop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 453
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 457
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 458
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    :goto_0
    sput v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 472
    sget-object v0, Lcom/android/mipop/api/MyApplication;->mBackButton:Lcom/android/mipop/widget/MeterBack;

    sget v0, Lcom/android/mipop/widget/MeterBack;->baseY:I

    invoke-static {v2, v0}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 473
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v3}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 475
    return-void

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public showMipopForce()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 532
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v3}, Lcom/android/mipop/widget/MeterBase;->setStopAnimationParking(Z)V

    .line 533
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 547
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v3}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 548
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 549
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 550
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 551
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 552
    return-void
.end method

.method public showMipopLocal()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 479
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 481
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 482
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 483
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 484
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 485
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 486
    return-void
.end method

.method public showSmartRemindDialog(I)V
    .locals 2
    .param p1, "dialogType"    # I

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSmartRemindDialog enter dialogType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V

    .line 724
    return-void
.end method
