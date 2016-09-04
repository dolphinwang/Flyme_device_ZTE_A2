.class public Lcom/android/mipop/cropimage/MenuActivity$HomeKeyEventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeKeyEventBroadCastReceiver"
.end annotation


# static fields
.field static final SYSTEM_HOME_KEY:Ljava/lang/String; = "homekey"

.field static final SYSTEM_REASON:Ljava/lang/String; = "reason"

.field static final SYSTEM_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final TAG:Ljava/lang/String; = "HomeKeyEventBroadCastReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 262
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "HomeKeyEventBroadCastReceiver"

    const-string v3, "HOME KEY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/mipop/cropimage/MenuActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    .line 272
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 266
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_1
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "HomeKeyEventBroadCastReceiver"

    const-string v3, "LONG HOME KEY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
