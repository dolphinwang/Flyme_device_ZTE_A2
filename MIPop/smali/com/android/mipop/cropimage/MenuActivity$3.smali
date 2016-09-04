.class Lcom/android/mipop/cropimage/MenuActivity$3;
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
    .line 109
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$3;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    const-string v0, "HouJiong"

    const-string v1, "lock_screen onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/android/mipop/cropimage/MenuActivity$3$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/MenuActivity$3$1;-><init>(Lcom/android/mipop/cropimage/MenuActivity$3;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/MenuActivity$3$1;->start()V

    .line 122
    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity$3;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    .line 123
    return-void
.end method
