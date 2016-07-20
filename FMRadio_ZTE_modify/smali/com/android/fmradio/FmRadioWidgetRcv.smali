.class public Lcom/android/fmradio/FmRadioWidgetRcv;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioWidgetRcv.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const-string v0, "FmRadioWidgetRcv"

    iput-object v0, p0, Lcom/android/fmradio/FmRadioWidgetRcv;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "isRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 59
    const/4 v4, 0x0

    .line 68
    :goto_0
    return v4

    .line 62
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    :goto_2
    move v4, v2

    .line 68
    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    const/4 v2, 0x1

    .line 65
    goto :goto_2

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    const-class v3, Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/fmradio/FmRadioWidgetRcv;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24
    invoke-static {p1}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 25
    .local v0, "freq":I
    iget-object v3, p0, Lcom/android/fmradio/FmRadioWidgetRcv;->TAG:Ljava/lang/String;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "receive FM_WIDGET_UPDATE, service is not running, freq = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/android/fmradio/FmRadioWidget;->getInstance()Lcom/android/fmradio/FmRadioWidget;

    move-result-object v2

    .line 29
    .local v2, "widget":Lcom/android/fmradio/FmRadioWidget;
    invoke-virtual {v2, p1, v0}, Lcom/android/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 48
    .end local v0    # "freq":I
    .end local v2    # "widget":Lcom/android/fmradio/FmRadioWidget;
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.FMRadio.FmRadioWidget.power"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-class v3, Lcom/android/fmradio/FmService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/fmradio/FmRadioWidgetRcv;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    iget-object v3, p0, Lcom/android/fmradio/FmRadioWidgetRcv;->TAG:Ljava/lang/String;

    const-string v4, "receive FM_WIDGET_POWER, service is running"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 35
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    .line 34
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "newIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 38
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/fmradio/FmRadioWidgetRcv;->TAG:Ljava/lang/String;

    const-string v4, "receive FM_WIDGET_POWER, service is not running"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 40
    .restart local v1    # "newIntent":Landroid/content/Intent;
    const-class v3, Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/high16 v3, 0x10200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
