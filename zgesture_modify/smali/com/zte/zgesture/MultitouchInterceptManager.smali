.class public Lcom/zte/zgesture/MultitouchInterceptManager;
.super Ljava/lang/Object;
.source "MultitouchInterceptManager.java"

# interfaces
.implements Lcom/zte/zgesture/core/external/InterfaceControl;
.implements Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;


# static fields
.field private static TIMER:I

.field private static mInstance:Lcom/zte/zgesture/MultitouchInterceptManager;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private appInstalledBroadcast:Landroid/content/BroadcastReceiver;

.field private curPackageName:Ljava/lang/String;

.field private disableMultitouchGestureTester:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private lastPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;

.field private switchBroadcast:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x7d0

    sput v0, Lcom/zte/zgesture/MultitouchInterceptManager;->TIMER:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->handler:Landroid/os/Handler;

    .line 62
    new-instance v2, Lcom/zte/zgesture/MultitouchInterceptManager$1;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/MultitouchInterceptManager$1;-><init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    iput-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->disableMultitouchGestureTester:Ljava/lang/Runnable;

    .line 95
    new-instance v2, Lcom/zte/zgesture/MultitouchInterceptManager$2;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/MultitouchInterceptManager$2;-><init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    iput-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->switchBroadcast:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v2, Lcom/zte/zgesture/MultitouchInterceptManager$3;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/MultitouchInterceptManager$3;-><init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    iput-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->appInstalledBroadcast:Landroid/content/BroadcastReceiver;

    .line 139
    const-string v2, "MultitouchInterceptManager"

    invoke-static {v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 140
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    .line 141
    new-instance v2, Lcom/zte/zgesture/data/MultitouchApp;

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/zte/zgesture/data/MultitouchApp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;

    .line 142
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 143
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, "settingFilter":Landroid/content/IntentFilter;
    const-string v2, "com.zte.zgesture.refreshSetting"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->switchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, "appInstalledFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->appInstalledBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->updateScreenTouchInterceptProperty()V

    .line 157
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->createDemoListener()V

    .line 158
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->ifNeedCheckMultitouchApp()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->curPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/zgesture/MultitouchInterceptManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->curPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->lastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/zgesture/MultitouchInterceptManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/zgesture/MultitouchInterceptManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->lastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/data/MultitouchApp;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/zgesture/MultitouchInterceptManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->disableMultitouchGestureTester:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/zte/zgesture/MultitouchInterceptManager;->TIMER:I

    return v0
.end method

.method static synthetic access$600(Lcom/zte/zgesture/MultitouchInterceptManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/zgesture/MultitouchInterceptManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->updateScreenTouchInterceptProperty()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/zgesture/MultitouchInterceptManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->ifNeedCheckMultitouchApp()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/MultitouchInterceptManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method private createDemoListener()V
    .locals 0

    .prologue
    .line 260
    invoke-static {p0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V

    .line 261
    invoke-static {p0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V

    .line 262
    invoke-static {p0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V

    .line 263
    invoke-static {p0}, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;->setStatusListener(Lcom/zte/zgesture/sensorcontrol/DemoStatusListener;)V

    .line 264
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/zgesture/MultitouchInterceptManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget-object v0, Lcom/zte/zgesture/MultitouchInterceptManager;->mInstance:Lcom/zte/zgesture/MultitouchInterceptManager;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/MultitouchInterceptManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/MultitouchInterceptManager;->mInstance:Lcom/zte/zgesture/MultitouchInterceptManager;

    .line 123
    :cond_1
    sget-object v0, Lcom/zte/zgesture/MultitouchInterceptManager;->mInstance:Lcom/zte/zgesture/MultitouchInterceptManager;

    goto :goto_0
.end method

.method private ifNeedCheckMultitouchApp()V
    .locals 5

    .prologue
    .line 171
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_screen_shot"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_switch_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_close_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->stopCheckMultitouchApp()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 185
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 186
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_3

    .line 184
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/data/MultitouchApp;->isAlertApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->startCheckMultitouchApp()V

    goto :goto_0

    .line 196
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->stopCheckMultitouchApp()V

    goto :goto_0
.end method

.method private setScreenTouchInterceptProperty(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zgesture_switch_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    return-void
.end method

.method private showAlertDialog()V
    .locals 7

    .prologue
    .line 200
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 204
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03005a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    .local v0, "dialogLayout":Landroid/widget/LinearLayout;
    const v3, 0x7f06006e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 206
    .local v2, "no_remindBox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/zte/zgesture/MultitouchInterceptManager$4;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/MultitouchInterceptManager$4;-><init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    .line 215
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 216
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 217
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090092

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/zgesture/MultitouchInterceptManager$5;

    invoke-direct {v6, p0}, Lcom/zte/zgesture/MultitouchInterceptManager$5;-><init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 230
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/zgesture/MultitouchInterceptManager$6;

    invoke-direct {v6, p0}, Lcom/zte/zgesture/MultitouchInterceptManager$6;-><init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 237
    iget-object v3, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private startCheckMultitouchApp()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->disableMultitouchGestureTester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->disableMultitouchGestureTester:Ljava/lang/Runnable;

    sget v2, Lcom/zte/zgesture/MultitouchInterceptManager;->TIMER:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method private stopCheckMultitouchApp()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->disableMultitouchGestureTester:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method private updateScreenTouchInterceptProperty()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 247
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_screen_shot"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_switch_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_close_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_alarm_turn"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    const-string v0, "1"

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->setEnableScreenTouchIntercept(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->setScreenTouchInterceptProperty(I)V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string v0, "0"

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->setEnableScreenTouchIntercept(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->setScreenTouchInterceptProperty(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroyAction()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "MultitouchInterceptManager destory"

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->switchBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/zgesture/MultitouchInterceptManager;->appInstalledBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const-string v0, "0"

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->setEnableScreenTouchIntercept(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->setScreenTouchInterceptProperty(I)V

    .line 133
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->stopCheckMultitouchApp()V

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zgesture/MultitouchInterceptManager;->mInstance:Lcom/zte/zgesture/MultitouchInterceptManager;

    .line 136
    return-void
.end method

.method public onStartDemo()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "1"

    invoke-static {v0}, Lcom/zte/zgesture/tools/Utils;->setEnableScreenTouchIntercept(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->setScreenTouchInterceptProperty(I)V

    .line 39
    return-void
.end method

.method public onStopDemo()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/zgesture/MultitouchInterceptManager;->updateScreenTouchInterceptProperty()V

    .line 44
    return-void
.end method

.method public recongizerAction()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
