.class public Lcom/zte/zgesture/setting/AirGesturesDemoActivity;
.super Landroid/app/Activity;
.source "AirGesturesDemoActivity.java"


# instance fields
.field private mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

.field private mControlExist:Z

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mTipsView:Lcom/zte/zgesture/ui/TipsView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    iput v0, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->type:I

    .line 18
    iput-boolean v0, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mControlExist:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f0900ad

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 24
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 25
    new-instance v2, Lcom/zte/zgesture/ui/TipsView;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/ui/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    .line 26
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->setContentView(Landroid/view/View;)V

    .line 27
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/ui/TipsView;->setBackgroundColor(I)V

    .line 28
    invoke-static {}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->isExistInstance()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mControlExist:Z

    .line 29
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->getInstance(Landroid/content/Context;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .line 30
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v3, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    .line 31
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->type:I

    .line 32
    const-string v1, ""

    .line 33
    .local v1, "intro":Ljava/lang/String;
    iget v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->type:I

    packed-switch v2, :pswitch_data_0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;

    invoke-virtual {v2, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 67
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v3, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->M:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v3, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->O:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.zte.zgesture.overhead.gesture"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "gesture"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_air_v_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v3, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->V:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    goto :goto_0

    .line 54
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_air_z_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v3, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->Z:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    goto/16 :goto_0

    .line 60
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_air_w_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v3, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->W:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    goto/16 :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-virtual {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->requestNoOutsideReceiver()V

    .line 79
    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    sget-object v2, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->SetAirGestureDemoType(Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;)V

    .line 80
    iget v1, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->type:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.zgesture.overhead.gesture"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "gesture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mControlExist:Z

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-virtual {v1}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->destroyAction()V

    .line 90
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;->mAirGestureControl:Lcom/zte/zgesture/sensorcontrol/AirGestureControl;

    invoke-virtual {v0}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl;->requestOutsideReceiver()V

    .line 74
    return-void
.end method
