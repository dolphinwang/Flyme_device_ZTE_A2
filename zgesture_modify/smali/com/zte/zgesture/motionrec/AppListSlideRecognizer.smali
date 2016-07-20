.class public Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
.super Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;
.source "AppListSlideRecognizer.java"


# static fields
.field public static final DIR_DOWN:I = 0x4

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x1

.field public static final DIR_UP:I = 0x3

.field private static final MAX_TOUCHPOINTS:I = 0x3

.field private static mInstance:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;


# instance fields
.field private final DEMO_REMOVE_TIP:I

.field private final DEMO_SWITCH_TIP:I

.field private final DEMO_UP_EVENT:I

.field public final TAG:Ljava/lang/String;

.field private curIndex:I

.field private dir:I

.field private iconListView:Lcom/zte/zgesture/ui/IconListView;

.field private mBackGround:Landroid/widget/AbsoluteLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFirNewPoint:Landroid/graphics/Point;

.field private mFirOriginPoint:Landroid/graphics/Point;

.field private mForceStopPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSecNewPoint:Landroid/graphics/Point;

.field private mSecOriginPoint:Landroid/graphics/Point;

.field private mShowingTips:Z

.field private mStart:Z

.field private mStatusbarHeight:I

.field private mSwitchCloseApp:Z

.field private mSwitchNextApp:Z

.field private mThiNewPoint:Landroid/graphics/Point;

.field private mThiOriginPoint:Landroid/graphics/Point;

.field private orientationChangeReceiver:Landroid/content/BroadcastReceiver;

.field private taskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/zgesture/data/TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/MotionBaseRecognizer;-><init>()V

    .line 43
    const-string v3, "AppListSlideRecognizer"

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->TAG:Ljava/lang/String;

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    .line 69
    iput-boolean v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mShowingTips:Z

    .line 70
    const/4 v3, -0x1

    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    .line 71
    iput v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    .line 74
    iput v5, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->DEMO_SWITCH_TIP:I

    .line 75
    const/4 v3, 0x2

    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->DEMO_REMOVE_TIP:I

    .line 76
    const/4 v3, 0x3

    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->DEMO_UP_EVENT:I

    .line 82
    iput v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStatusbarHeight:I

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mForceStopPackageList:Ljava/util/ArrayList;

    .line 86
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mForceStopPackageList:Ljava/util/ArrayList;

    const-string v4, "zte.android.flashlight"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mForceStopPackageList:Ljava/util/ArrayList;

    const-string v4, "zte.com.cn.driverMode"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$1;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$1;-><init>(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v3, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer$2;-><init>(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->orientationChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    .line 119
    iput v5, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mPriority:I

    .line 120
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 121
    .local v2, "winManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    .line 122
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    .line 123
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStatusbarHeight:I

    .line 125
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 126
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v3}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 128
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_close_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchCloseApp:Z

    .line 129
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_switch_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchNextApp:Z

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v1, "orientationFilter":Landroid/content/IntentFilter;
    const-string v3, "com.zte.zgesture.onConfigurationChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->orientationChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "myIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchCloseApp:Z

    return p1
.end method

.method static synthetic access$202(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchNextApp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->removeTips()V

    return-void
.end method

.method static synthetic access$402(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    return p1
.end method

.method static synthetic access$502(Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    return p1
.end method

.method private addTipView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 194
    .local v2, "wm":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    if-nez v3, :cond_0

    .line 195
    new-instance v3, Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    .line 196
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 197
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 199
    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 200
    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 201
    const/16 v3, 0x28

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 202
    const/16 v3, 0x7d6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 203
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-nez v3, :cond_1

    .line 207
    new-instance v3, Lcom/zte/zgesture/ui/IconListView;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/zte/zgesture/ui/IconListView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    .line 208
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    iget v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x8

    invoke-direct {v1, v3, v4, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 210
    .local v1, "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .end local v1    # "tipParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V
    .locals 17
    .param p1, "closeTask"    # Lcom/zte/zgesture/data/TaskDescription;
    .param p2, "startTask"    # Lcom/zte/zgesture/data/TaskDescription;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 513
    .local v1, "am":Landroid/app/ActivityManager;
    :try_start_0
    const-class v12, Landroid/app/ActivityManager;

    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 514
    .local v9, "meths":[Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    .line 516
    .local v11, "removeTask":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v12, v9

    if-ge v6, v12, :cond_0

    .line 517
    aget-object v12, v9, v6

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "removeTask"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 518
    aget-object v11, v9, v6

    .line 523
    :cond_0
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 524
    .local v10, "para":[Ljava/lang/reflect/Type;
    array-length v12, v10

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 525
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->isFoceStopPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 530
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    const-string v13, "zte.android.flashlight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 532
    const-string v3, "android.intent.action.FLASH_CHANGED"

    .line 533
    .local v3, "flashStatusChanged":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v7, "lightChanged":Landroid/content/Intent;
    const-string v12, "FLASH_CHANGED"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    const-string v12, "notify to status bar for flashlight changed!"

    invoke-static {v12}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 538
    sget-boolean v12, Lcom/zte/zgesture/tools/FeatureConfig;->forceStopFlashLightEnable:Z

    if-eqz v12, :cond_5

    .line 539
    const-string v12, "android.app.ActivityManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "forceStopPackage"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 541
    .local v8, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v8, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v3    # "flashStatusChanged":Ljava/lang/String;
    .end local v7    # "lightChanged":Landroid/content/Intent;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/zte/zgesture/data/TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09008e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v6    # "i":I
    .end local v9    # "meths":[Ljava/lang/reflect/Method;
    .end local v10    # "para":[Ljava/lang/reflect/Type;
    .end local v11    # "removeTask":Ljava/lang/reflect/Method;
    :goto_3
    if-eqz p2, :cond_2

    .line 565
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    const v13, 0x104000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    move-object/from16 v0, p2

    iget v12, v0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    if-ltz v12, :cond_7

    .line 569
    move-object/from16 v0, p2

    iget v12, v0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    const/4 v13, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v1, v12, v13, v14}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 578
    :cond_2
    :goto_4
    return-void

    .line 516
    .restart local v6    # "i":I
    .restart local v9    # "meths":[Ljava/lang/reflect/Method;
    .restart local v11    # "removeTask":Ljava/lang/reflect/Method;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 527
    .restart local v10    # "para":[Ljava/lang/reflect/Type;
    :cond_4
    const/4 v12, 0x1

    :try_start_1
    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 560
    .end local v6    # "i":I
    .end local v9    # "meths":[Ljava/lang/reflect/Method;
    .end local v10    # "para":[Ljava/lang/reflect/Type;
    .end local v11    # "removeTask":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 562
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: closeActivity :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    goto :goto_3

    .line 543
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "flashStatusChanged":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "lightChanged":Landroid/content/Intent;
    .restart local v9    # "meths":[Ljava/lang/reflect/Method;
    .restart local v10    # "para":[Ljava/lang/reflect/Type;
    .restart local v11    # "removeTask":Ljava/lang/reflect/Method;
    :cond_5
    :try_start_2
    const-string v4, "android.intent.action.ONOFF_FLASH"

    .line 544
    .local v4, "flashStatusOnOff":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v5, "flashlightOff":Landroid/content/Intent;
    const-string v12, "ONOFF_FLASH"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    const-string v12, "notify to flashlight off!"

    invoke-static {v12}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 551
    .end local v3    # "flashStatusChanged":Ljava/lang/String;
    .end local v4    # "flashStatusOnOff":Ljava/lang/String;
    .end local v5    # "flashlightOff":Landroid/content/Intent;
    .end local v7    # "lightChanged":Landroid/content/Intent;
    :cond_6
    const-string v12, "android.app.ActivityManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "forceStopPackage"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 553
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v8, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 572
    .end local v6    # "i":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "meths":[Ljava/lang/reflect/Method;
    .end local v10    # "para":[Ljava/lang/reflect/Type;
    .end local v11    # "removeTask":Ljava/lang/reflect/Method;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 573
    :catch_1
    move-exception v2

    .line 574
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v12, "zgesture"

    const-string v13, "Unable to launch recent task"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private generateIconList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v2, "iconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 584
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 585
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v3, v3, Lcom/zte/zgesture/data/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "icon":Landroid/widget/ImageView;
    :cond_0
    return-object v2
.end method

.method private getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "origin"    # Landroid/graphics/Point;

    .prologue
    .line 254
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 255
    .local v0, "dif":F
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    if-nez p0, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    .line 605
    :cond_0
    sget-object v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    if-nez v0, :cond_1

    .line 606
    new-instance v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    .line 609
    :cond_1
    sget-object v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    goto :goto_0
.end method

.method private getLastTaskIndex()I
    .locals 6

    .prologue
    .line 395
    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 396
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 397
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 398
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/zte/zgesture/data/TaskDescription;->isHomeTask(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/zgesture/data/TaskDescription;

    iget v5, v4, Lcom/zte/zgesture/data/TaskDescription;->persistentId:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v5, v4, :cond_2

    .line 409
    .end local v2    # "j":I
    :goto_2
    return v2

    .line 402
    .restart local v2    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 409
    .end local v2    # "j":I
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const/4 v5, 0x0

    .line 231
    .local v5, "statusbarHeight":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 232
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "obj":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 234
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 239
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "id":I
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v6, "AppListSlideRecognizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStatusBarHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v5

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSwitchIndex()I
    .locals 6

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->refreshTaskList()V

    .line 339
    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 340
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 341
    .local v3, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v1, -0x1

    .line 342
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 343
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/zgesture/data/TaskDescription;

    iget v4, v4, Lcom/zte/zgesture/data/TaskDescription;->persistentId:I

    if-ne v5, v4, :cond_0

    .line 344
    move v1, v2

    .line 342
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_1
    if-gez v1, :cond_2

    .line 348
    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 351
    :cond_2
    return v1
.end method

.method private getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "origin"    # Landroid/graphics/Point;

    .prologue
    .line 260
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 261
    .local v0, "dif":F
    return v0
.end method

.method private isFoceStopPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mForceStopPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    const/4 v2, 0x1

    .line 598
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isShowTips()Z
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "toShow":Z
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getHeightDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 273
    :cond_1
    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchCloseApp:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInDemo:Z

    if-eqz v1, :cond_3

    .line 274
    :cond_2
    const/4 v0, 0x1

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getWidthDistance(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 283
    :cond_5
    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchNextApp:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInDemo:Z

    if-eqz v1, :cond_7

    .line 284
    :cond_6
    const/4 v0, 0x1

    .line 287
    :cond_7
    return v0
.end method

.method private isTouchOnStatusBar(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .locals 4
    .param p1, "finger1"    # Landroid/graphics/Point;
    .param p2, "finger2"    # Landroid/graphics/Point;
    .param p3, "finger3"    # Landroid/graphics/Point;
    .param p4, "absY1"    # I

    .prologue
    .line 244
    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int v2, p4, v3

    .line 245
    .local v2, "offsetY":I
    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int v0, v3, v2

    .line 246
    .local v0, "absY2":I
    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int v1, v3, v2

    .line 247
    .local v1, "absY3":I
    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStatusbarHeight:I

    if-lt p4, v3, :cond_0

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStatusbarHeight:I

    if-lt v0, v3, :cond_0

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStatusbarHeight:I

    if-ge v1, v3, :cond_1

    .line 248
    :cond_0
    const/4 v3, 0x1

    .line 250
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyApp(I)V
    .locals 3
    .param p1, "option"    # I

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AppListSlideRecognizer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "option"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string v1, "dir"

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method private processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    .line 143
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    .line 144
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    .line 146
    iget-boolean v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInDemo:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->isShowTips()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, v5}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->notifyApp(I)V

    .line 149
    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    .line 178
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->slideDir()I

    move-result v0

    iput v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    .line 154
    invoke-direct {p0, v4}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->notifyApp(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->isShowTips()Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    iget-boolean v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mShowingTips:Z

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "AppListSlideRecognizer"

    const-string v1, "need to hide Tips"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->removeTips()V

    .line 165
    :cond_2
    iput v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    goto :goto_0

    .line 169
    :cond_3
    iget-boolean v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mShowingTips:Z

    if-nez v0, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getSwitchIndex()I

    move-result v0

    iput v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    .line 171
    iget v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-direct {p0, v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->showTips(I)V

    .line 172
    const-string v0, "AppListSlideRecognizer"

    const-string v1, "need to show Tips"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->slideDir()I

    move-result v0

    iput v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    .line 176
    iget v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-direct {p0, v0, v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->switchTips(II)V

    goto :goto_0
.end method

.method private processUpEvent()I
    .locals 4

    .prologue
    .line 181
    const-string v1, "AppListSlideRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processUpEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->removeTips()V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "res":I
    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStart:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    if-lez v1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStart:Z

    .line 188
    return v0
.end method

.method private refreshTaskList()V
    .locals 21

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 414
    .local v11, "am":Landroid/app/ActivityManager;
    const/16 v1, 0x3e7

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v18

    .line 417
    .local v18, "tmpTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v16, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/zgesture/data/TaskDescription;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 419
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-static/range {v1 .. v6}, Lcom/zte/zgesture/data/TaskDescription;->createTaskDescription(ZIILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/zte/zgesture/data/TaskDescription;

    move-result-object v17

    .line 424
    .local v17, "tds":Lcom/zte/zgesture/data/TaskDescription;
    if-eqz v17, :cond_0

    .line 425
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 430
    .end local v17    # "tds":Lcom/zte/zgesture/data/TaskDescription;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "j":I
    :goto_1
    if-ltz v14, :cond_5

    .line 431
    const/16 v19, 0x0

    .line 432
    .local v19, "validTask":Z
    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 433
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v2, v1, Lcom/zte/zgesture/data/TaskDescription;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v1, v1, Lcom/zte/zgesture/data/TaskDescription;->className:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    const/16 v19, 0x1

    .line 438
    :cond_2
    if-nez v19, :cond_3

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    :cond_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 432
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 444
    .end local v19    # "validTask":Z
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    :goto_3
    if-ltz v13, :cond_b

    .line 445
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/zte/zgesture/data/TaskDescription;

    .line 447
    .restart local v17    # "tds":Lcom/zte/zgesture/data/TaskDescription;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/zte/zgesture/data/TaskDescription;->isHomeTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 444
    :cond_6
    :goto_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 451
    :cond_7
    const/4 v12, -0x1

    .line 452
    .local v12, "foundIndex":I
    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_8

    .line 453
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/zte/zgesture/data/TaskDescription;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v1, v1, Lcom/zte/zgesture/data/TaskDescription;->className:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v1, Lcom/zte/zgesture/data/TaskDescription;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/zte/zgesture/data/TaskDescription;->persistentId:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/zte/zgesture/data/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/zte/zgesture/data/TaskDescription;->className:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/zte/zgesture/data/TaskDescription;->description:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v9, v9, Lcom/zte/zgesture/data/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/zte/zgesture/data/TaskDescription;->mLabel:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/zte/zgesture/data/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 457
    move v12, v14

    .line 461
    :cond_8
    const/4 v1, -0x1

    if-ne v12, v1, :cond_6

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->getLastTaskIndex()I

    move-result v15

    .line 464
    .local v15, "lastIndex":I
    if-ltz v15, :cond_a

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 452
    .end local v15    # "lastIndex":I
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 467
    .restart local v15    # "lastIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 471
    .end local v12    # "foundIndex":I
    .end local v15    # "lastIndex":I
    .end local v17    # "tds":Lcom/zte/zgesture/data/TaskDescription;
    :cond_b
    return-void
.end method

.method private refreshTips()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    .line 384
    :cond_0
    return-void
.end method

.method private removeTipView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 217
    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 222
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 223
    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBackGround:Landroid/widget/AbsoluteLayout;

    .line 226
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private removeTips()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->removeTipView()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mShowingTips:Z

    .line 324
    return-void
.end method

.method private showTips(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->addTipView()V

    .line 328
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    .line 330
    const-string v0, "AppListSlideRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showTips index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mShowingTips:Z

    .line 333
    return-void
.end method

.method private slideDir()I
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_1

    .line 303
    const/4 v0, 0x2

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_2

    .line 309
    const/4 v0, 0x4

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirNewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecNewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiNewPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_3

    .line 315
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private startNextActivity(Lcom/zte/zgesture/data/TaskDescription;)V
    .locals 6
    .param p1, "startTask"    # Lcom/zte/zgesture/data/TaskDescription;

    .prologue
    .line 474
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const v4, 0x7f040008

    const v5, 0x7f040007

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 476
    .local v2, "opts":Landroid/app/ActivityOptions;
    iget v3, p1, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    if-ltz v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 479
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p1, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 489
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v3, p1, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    const v4, 0x104000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "zgesture"

    const-string v4, "Unable to launch recent task"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreviousActivity(Lcom/zte/zgesture/data/TaskDescription;)V
    .locals 6
    .param p1, "startTask"    # Lcom/zte/zgesture/data/TaskDescription;

    .prologue
    .line 492
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const v4, 0x7f040006

    const v5, 0x7f040009

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 494
    .local v2, "opts":Landroid/app/ActivityOptions;
    iget v3, p1, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    if-ltz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 497
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p1, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 507
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v3, p1, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    const v4, 0x104000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    :try_start_0
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Unable to launch recent task"

    invoke-static {v3}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchTips(II)V
    .locals 3
    .param p1, "dir"    # I
    .param p2, "index"    # I

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_0

    .line 373
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 365
    :pswitch_1
    if-eqz p2, :cond_0

    .line 366
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->iconListView:Lcom/zte/zgesture/ui/IconListView;

    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->generateIconList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/ui/IconListView;->setIconList(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doRecoginzer()V
    .locals 8

    .prologue
    const v7, 0x7f040005

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 680
    const-string v1, "AppListSlideRecognizer"

    const-string v2, "doRecoginzer()"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInDemo:Z

    if-eqz v1, :cond_0

    .line 682
    invoke-direct {p0, v6}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->notifyApp(I)V

    .line 683
    iput v5, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    .line 741
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchNextApp:Z

    if-eqz v1, :cond_1

    .line 687
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 688
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 689
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->startNextActivity(Lcom/zte/zgesture/data/TaskDescription;)V

    .line 697
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchCloseApp:Z

    if-eqz v1, :cond_2

    .line 698
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    if-ne v1, v6, :cond_6

    .line 699
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 700
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1, v3, v3}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V

    .line 701
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 716
    :goto_2
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->refreshTips()V

    .line 739
    :cond_2
    :goto_3
    iput v5, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    goto :goto_0

    .line 691
    :cond_3
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    if-ne v1, v4, :cond_1

    .line 692
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->startPreviousActivity(Lcom/zte/zgesture/data/TaskDescription;)V

    goto :goto_1

    .line 703
    :cond_4
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    if-nez v1, :cond_5

    .line 704
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    const v3, 0x7f04000b

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 706
    .local v0, "opts":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V

    .line 707
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 709
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const v2, 0x7f040006

    const v3, 0x7f04000b

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 711
    .restart local v0    # "opts":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V

    .line 712
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 713
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    goto/16 :goto_2

    .line 717
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_6
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->dir:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 718
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 719
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1, v3, v3}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V

    .line 720
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 735
    :goto_4
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->refreshTips()V

    goto/16 :goto_3

    .line 722
    :cond_7
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    if-nez v1, :cond_8

    .line 723
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    invoke-static {v1, v2, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 725
    .restart local v0    # "opts":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V

    .line 726
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 728
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_8
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    const v2, 0x7f040006

    invoke-static {v1, v2, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 730
    .restart local v0    # "opts":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/zgesture/data/TaskDescription;

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->closeActivity(Lcom/zte/zgesture/data/TaskDescription;Lcom/zte/zgesture/data/TaskDescription;Landroid/app/ActivityOptions;)V

    .line 731
    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->taskList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 732
    iget v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->curIndex:I

    goto :goto_4
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->orientationChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 670
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInstance:Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;

    .line 675
    const-string v0, "AppListSlideRecognizer"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 671
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMotion(Landroid/view/MotionEvent;)I
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 615
    const/4 v1, 0x0

    .line 617
    .local v1, "res":I
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zgesture/tools/Utils;->isInLauncher(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 663
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 622
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_1
    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchNextApp:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSwitchCloseApp:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mInDemo:Z

    if-nez v3, :cond_2

    move v2, v1

    .line 623
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 626
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 628
    .local v0, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v2, v1

    .line 663
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 630
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->processUpEvent()I

    move-result v1

    .line 631
    const-string v3, "AppListSlideRecognizer"

    const-string v4, "MotionEvent.ACTION_UP"

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    :pswitch_2
    const-string v3, "AppListSlideRecognizer"

    const-string v4, "MotionEvent.ACTION_POINTER_UP"

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 637
    :pswitch_3
    const-string v3, "AppListSlideRecognizer"

    const-string v4, "MotionEvent.ACTION_DOWN"

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 640
    :pswitch_4
    const-string v3, "AppListSlideRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_POINTER_DOWN pointerCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-ne v0, v9, :cond_4

    .line 642
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    .line 643
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    .line 644
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    .line 646
    iget-object v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mFirOriginPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mSecOriginPoint:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mThiOriginPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->isTouchOnStatusBar(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 647
    iput-boolean v7, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStart:Z

    .line 648
    const-string v3, "AppListSlideRecognizer"

    const-string v4, "start..."

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 651
    :cond_4
    iput-boolean v6, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStart:Z

    goto/16 :goto_1

    .line 655
    :pswitch_5
    iget-boolean v3, p0, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->mStart:Z

    if-eqz v3, :cond_3

    if-ne v0, v9, :cond_3

    .line 656
    invoke-direct {p0, p1}, Lcom/zte/zgesture/motionrec/AppListSlideRecognizer;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
