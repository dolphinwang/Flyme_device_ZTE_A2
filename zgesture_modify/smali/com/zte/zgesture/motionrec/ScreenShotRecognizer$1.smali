.class Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenShotRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;->this$0:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;->this$0:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    # getter for: Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->access$000(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 43
    iget-object v0, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;->this$0:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    iget-object v1, p0, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer$1;->this$0:Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;

    # getter for: Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v1}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->access$000(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    const-string v2, "setting_screen_shot"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->mSwitch:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;->access$102(Lcom/zte/zgesture/motionrec/ScreenShotRecognizer;Z)Z

    .line 45
    return-void
.end method
