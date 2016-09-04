.class Lcom/android/mipop/cropimage/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$1;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    const-string v2, "HouJiong"

    const-string v3, "power_off onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v2, "zte.com.cn.emode.action.SHUT_DOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mipop/cropimage/MenuActivity$1;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v2, v0}, Lcom/android/mipop/cropimage/MenuActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "shutdown":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/android/mipop/cropimage/MenuActivity$1;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v2, v1}, Lcom/android/mipop/cropimage/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
