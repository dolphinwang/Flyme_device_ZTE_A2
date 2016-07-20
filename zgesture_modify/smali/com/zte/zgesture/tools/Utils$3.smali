.class final Lcom/zte/zgesture/tools/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/tools/Utils;->closeBlackScreenGestureInDriver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/zte/zgesture/tools/Utils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v1, "GestureMotionUtils"

    const-string v2, "closeBlackScreenGestureInDriver"

    invoke-static {v1, v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget v1, Lcom/zte/zgesture/tools/FeatureConfig;->blackScreenGestureDriver:I

    packed-switch v1, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v1, p0, Lcom/zte/zgesture/tools/Utils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "black_screen_gesture"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 192
    :pswitch_1
    const-string v1, "echo 0 > /sys/tp_wake_gesture/wake_gesture"

    invoke-static {v1, v3}, Lcom/zte/zgesture/tools/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/zte/zgesture/tools/ShellUtils$CommandResult;

    move-result-object v0

    .line 194
    .local v0, "result":Lcom/zte/zgesture/tools/ShellUtils$CommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommand result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 195
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->result:I

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShellUtils.execCommanderror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v0    # "result":Lcom/zte/zgesture/tools/ShellUtils$CommandResult;
    :pswitch_2
    const-string v1, "echo 0 > /proc/touchscreen/wake_gesture"

    invoke-static {v1, v3}, Lcom/zte/zgesture/tools/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/zte/zgesture/tools/ShellUtils$CommandResult;

    move-result-object v0

    .line 202
    .restart local v0    # "result":Lcom/zte/zgesture/tools/ShellUtils$CommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommand result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 203
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->result:I

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShellUtils.execCommanderror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
