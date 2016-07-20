.class Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;
.super Landroid/content/BroadcastReceiver;
.source "BlackScreenGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x64

    .line 143
    const-string v4, "type"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "type":Ljava/lang/String;
    const-string v4, "BlackScreenGestureControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this is drawCharReceiver type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "animtype":I
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->doubleTabSwitch:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$500(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "double_tap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    const/4 v5, 0x1

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mDoubleTapTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 150
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-static {v4, v5}, Lcom/zte/zgesture/tools/Utils;->requestStartQueryNearStatus(Landroid/content/Context;Lcom/zte/zgesture/core/external/InterfaceControl;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mBlackScreenSwitch:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$700(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawDownSwitch:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$800(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "draw_down"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/zte/zgesture/tools/Utils;->vibrate(Landroid/content/Context;I)V

    .line 161
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->DrawDownChar()V
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$900(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawLeftSwitch:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "draw_left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->sendLeftMusicKey()V
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawRightSwitch:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "draw_right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # invokes: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->sendRightMusicKey()V
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)V

    goto :goto_0

    .line 175
    :cond_4
    const-string v4, "draw_c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 176
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1500(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawCSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1700(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 178
    sget-object v4, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->C:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    invoke-virtual {v4}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->ordinal()I

    move-result v2

    .line 206
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1600(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/zte/zgesture/tools/Utils;->vibrate(Landroid/content/Context;I)V

    .line 208
    sget-boolean v4, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenAnimation:Z

    if-eqz v4, :cond_e

    .line 209
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mAnimaEnd:Z
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zgesture/tools/Utils;->isLockScreenState(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 213
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zgesture/tools/Utils;->unLockSafe(Landroid/content/Context;)V

    .line 215
    :cond_6
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zgesture/tools/Utils;->lightScreen(Landroid/content/Context;)V

    .line 216
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    const/4 v5, 0x0

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mAnimaEnd:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3202(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/zte/zgesture/ui/AnimActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "animActivityIntent":Landroid/content/Intent;
    const-string v4, "type"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const/high16 v4, 0x50040000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    new-instance v1, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4$1;-><init>(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;)V

    .line 234
    .local v1, "animationListerner":Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;
    invoke-static {v1}, Lcom/zte/zgesture/ui/AnimActivity;->setAnimationListerner(Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "animActivityIntent":Landroid/content/Intent;
    .end local v1    # "animationListerner":Lcom/zte/zgesture/ui/AnimActivity$AnimationListerner;
    :cond_7
    const-string v4, "draw_m"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 180
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1800(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawMSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1900(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 182
    sget-object v4, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->M:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    invoke-virtual {v4}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->ordinal()I

    move-result v2

    goto/16 :goto_1

    .line 183
    :cond_8
    const-string v4, "draw_o"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 184
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawOSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 186
    sget-object v4, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->O:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    invoke-virtual {v4}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->ordinal()I

    move-result v2

    goto/16 :goto_1

    .line 187
    :cond_9
    const-string v4, "draw_w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2200(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawWSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2300(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    .line 190
    sget-object v4, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->W:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    invoke-virtual {v4}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->ordinal()I

    move-result v2

    goto/16 :goto_1

    .line 191
    :cond_a
    const-string v4, "draw_s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 192
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2400(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawSSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2500(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    goto/16 :goto_1

    .line 194
    :cond_b
    const-string v4, "draw_v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 195
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2600(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawVSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2700(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    goto/16 :goto_1

    .line 197
    :cond_c
    const-string v4, "draw_e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 198
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawEIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2800(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawESwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$2900(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    goto/16 :goto_1

    .line 200
    :cond_d
    const-string v4, "draw_up"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 201
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpIntent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3000(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mStartAppIntent:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1402(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    iget-object v5, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    # getter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->drawUpSwitch:Z
    invoke-static {v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$3100(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;)Z

    move-result v5

    # setter for: Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->mEventTrigger:Z
    invoke-static {v4, v5}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->access$1602(Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;Z)Z

    goto/16 :goto_1

    .line 239
    :cond_e
    iget-object v4, p0, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl$4;->this$0:Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;

    invoke-virtual {v4}, Lcom/zte/zgesture/sensorcontrol/BlackScreenGestureControl;->recongizerAction()V

    goto/16 :goto_0
.end method
