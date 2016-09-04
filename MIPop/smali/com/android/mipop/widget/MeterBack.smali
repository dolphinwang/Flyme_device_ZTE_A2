.class public Lcom/android/mipop/widget/MeterBack;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterBack.java"


# static fields
.field private static final LEFT_KEY:Ljava/lang/String; = "LEFT_KEY"

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private handler4LongClick:Landroid/os/Handler;

.field private hasMoved:Z

.field private isDown:Z

.field private mLastX:I

.field private mLastY:I

.field mPress:Lcom/zte/mifavor/pressure/PressureController;

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private runnableCapture:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/mipop/widget/MeterBack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBack;->isDown:Z

    .line 54
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mLastX:I

    .line 55
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mLastY:I

    .line 56
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartX:I

    .line 57
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartY:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBack;->handler4LongClick:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/mipop/widget/MeterBack$4;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterBack$4;-><init>(Lcom/android/mipop/widget/MeterBack;)V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBack;->runnableCapture:Ljava/lang/Runnable;

    .line 66
    sget-object v0, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterBack;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterBack;->setSoundEffectsEnabled(Z)V

    .line 68
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterBack;->updateKey()V

    .line 70
    const-string v0, "true"

    const-string v1, "ro.build.PTP_Feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, ""

    const-string v1, "lxg PTP_Feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterBack;->initPressureLib()V

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/widget/MeterBack;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/widget/MeterBack;
    .param p1, "x1"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p2, "x2"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p3, "x3"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mipop/widget/MeterBack;->onPressureChangedCallback(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mipop/widget/MeterBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/widget/MeterBack;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterBack;->startAction()V

    return-void
.end method

.method private initPressureLib()V
    .locals 2

    .prologue
    .line 83
    new-instance v1, Lcom/zte/mifavor/pressure/PressureController;

    invoke-direct {v1}, Lcom/zte/mifavor/pressure/PressureController;-><init>()V

    iput-object v1, p0, Lcom/android/mipop/widget/MeterBack;->mPress:Lcom/zte/mifavor/pressure/PressureController;

    .line 85
    new-instance v0, Lcom/android/mipop/widget/MeterBack$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterBack$1;-><init>(Lcom/android/mipop/widget/MeterBack;)V

    .line 94
    .local v0, "mPressureCallback":Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;
    iget-object v1, p0, Lcom/android/mipop/widget/MeterBack;->mPress:Lcom/zte/mifavor/pressure/PressureController;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/pressure/PressureController;->setCallback(Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;)V

    .line 95
    return-void
.end method

.method private lomgPressTenTimesNotify()V
    .locals 6

    .prologue
    .line 269
    sget-object v3, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 270
    .local v2, "mPreference":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "mipop_long_clicked_operater_first"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 274
    .local v1, "mLongClickedOperator":Z
    const-string v3, "huangwei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mLongClickedOperator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-nez v1, :cond_0

    .line 276
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mipop/api/MyApplication;->showSmartRemindDialog(I)V

    .line 278
    const-string v3, "mipop_long_clicked_operater_first"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    :cond_0
    return-void
.end method

.method private onPressureChangedCallback(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 5
    .param p1, "oldState"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p2, "newState"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p3, "spot"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 98
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",spot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v2, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-ne p2, v2, :cond_1

    .line 101
    sget-object v2, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "press_vibrate_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBack;->mPress:Lcom/zte/mifavor/pressure/PressureController;

    invoke-static {}, Lcom/zte/mifavor/pressure/PressureController;->getVibrateDurationOfWeightPress()I

    move-result v0

    .line 103
    .local v0, "vibrateDuration":I
    sget-object v2, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 104
    .local v1, "vibrator":Landroid/os/Vibrator;
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 106
    .end local v0    # "vibrateDuration":I
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    new-instance v2, Lcom/android/mipop/widget/MeterBack$2;

    invoke-direct {v2, p0}, Lcom/android/mipop/widget/MeterBack$2;-><init>(Lcom/android/mipop/widget/MeterBack;)V

    invoke-virtual {v2}, Lcom/android/mipop/widget/MeterBack$2;->start()V

    .line 118
    :cond_1
    return-void
.end method

.method private startAction()V
    .locals 4

    .prologue
    .line 161
    sget-object v1, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LEFT_KEY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "leftKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mipop/widget/Until;->startAction(Landroid/content/Context;I)V

    .line 163
    return-void
.end method

.method private updateKey()V
    .locals 4

    .prologue
    .line 77
    sget-object v1, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LEFT_KEY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "leftKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 79
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/mipop/widget/Until;->keyPressIconId:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->setResId(II)V

    .line 80
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 125
    const-string v3, "Suhao.Click"

    const-string v4, "back click"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v3, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 128
    .local v2, "mPreference":Landroid/content/SharedPreferences;
    const-string v3, "mipop_click_times"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "mClickTimes":I
    const-string v3, "mipop_long_clicked"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    .local v1, "mLongClicked":Z
    const-string v3, "huangwei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mClickTimes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLongClicked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/mipop/widget/MeterBack;->playSoundEffect(I)V

    .line 135
    sget-object v3, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "LEFT_KEY"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 136
    new-instance v3, Lcom/android/mipop/widget/MeterBack$3;

    invoke-direct {v3, p0}, Lcom/android/mipop/widget/MeterBack$3;-><init>(Lcom/android/mipop/widget/MeterBack;)V

    invoke-virtual {v3}, Lcom/android/mipop/widget/MeterBack$3;->start()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mipop/api/MyApplication;->hideMipopForce()V

    .line 143
    iget-object v3, p0, Lcom/android/mipop/widget/MeterBack;->handler4LongClick:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mipop/widget/MeterBack;->runnableCapture:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public LongClick()V
    .locals 4

    .prologue
    .line 169
    const-string v2, "HouJiong"

    const-string v3, "startIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v2, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mipop_long_clicked"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v1, "intentAdd":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    sget-object v2, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    const-string v2, "HouJiong"

    const-string v3, "startIntent end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/mipop/widget/MeterBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    sget-object v0, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mipop/widget/Until;->initialPop(Landroid/content/Context;)V

    .line 192
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->land()V

    .line 193
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 197
    const-string v6, "true"

    const-string v7, "ro.build.PTP_Feature"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    const-string v6, ""

    const-string v7, "lxg PTP_Feature"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v6, p0, Lcom/android/mipop/widget/MeterBack;->mPress:Lcom/zte/mifavor/pressure/PressureController;

    invoke-virtual {v6, p1}, Lcom/zte/mifavor/pressure/PressureController;->acquirePressureEvent(Landroid/view/MotionEvent;)V

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v3, v6

    .line 203
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v4, v6, -0x19

    .line 205
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/mipop/widget/MeterBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 207
    :pswitch_1
    const-string v6, "OUT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "back ACTION_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sput-boolean v5, Lcom/android/mipop/widget/MeterBack;->mTouchDown:Z

    .line 210
    iput v3, p0, Lcom/android/mipop/widget/MeterBack;->mLastX:I

    .line 211
    iput v4, p0, Lcom/android/mipop/widget/MeterBack;->mLastY:I

    .line 212
    iput v3, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartX:I

    .line 213
    iput v4, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartY:I

    .line 214
    iput-boolean v5, p0, Lcom/android/mipop/widget/MeterBack;->isDown:Z

    goto :goto_0

    .line 218
    :pswitch_2
    const-string v5, "OUT"

    const-string v6, "back ACTION_OUTSIDE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :pswitch_3
    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->mLastX:I

    sub-int v1, v3, v6

    .line 223
    .local v1, "offsetX":I
    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->mLastY:I

    sub-int v2, v4, v6

    .line 224
    .local v2, "offsetY":I
    const/4 v0, 0x3

    .line 227
    .local v0, "MAX_SIZE":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v0, :cond_3

    .line 229
    :cond_2
    const-string v6, "MBack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseX/offsetX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/mipop/widget/MeterBack;->baseX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget v6, Lcom/android/mipop/widget/MeterBack;->baseX:I

    add-int/2addr v6, v1

    sput v6, Lcom/android/mipop/widget/MeterBack;->baseX:I

    .line 231
    sget v6, Lcom/android/mipop/widget/MeterBack;->baseY:I

    add-int/2addr v6, v2

    sput v6, Lcom/android/mipop/widget/MeterBack;->baseY:I

    .line 235
    sget v6, Lcom/android/mipop/widget/MeterBack;->baseX:I

    sget v7, Lcom/android/mipop/widget/MeterBack;->baseY:I

    invoke-static {v6, v7}, Lcom/android/mipop/animation/AnimationParking;->updateBack(II)V

    .line 236
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    sput-boolean v9, Lcom/android/mipop/api/MyApplication;->mBeforeInputViewShow:Z

    .line 238
    iput v3, p0, Lcom/android/mipop/widget/MeterBack;->mLastX:I

    .line 239
    iput v4, p0, Lcom/android/mipop/widget/MeterBack;->mLastY:I

    .line 245
    :cond_3
    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartX:I

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sget v7, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    if-gt v6, v7, :cond_4

    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartY:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sget v7, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    if-le v6, v7, :cond_1

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBack;->moved()V

    goto/16 :goto_1

    .line 252
    .end local v0    # "MAX_SIZE":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    :pswitch_4
    const-string v5, "Suhao.Click"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MeterBacd.UP, MOVE_MAX_SIZE/baseX= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/widget/MeterBack;->baseX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v5, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    if-nez v5, :cond_5

    .line 257
    :cond_5
    sput-boolean v9, Lcom/android/mipop/widget/MeterBack;->mTouchDown:Z

    .line 258
    iput-boolean v9, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    .line 259
    iput-boolean v9, p0, Lcom/android/mipop/widget/MeterBack;->isDown:Z

    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
