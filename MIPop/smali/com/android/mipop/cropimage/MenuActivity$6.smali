.class Lcom/android/mipop/cropimage/MenuActivity$6;
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
    .line 163
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$6;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    const-string v1, "HouJiong"

    const-string v2, "mute onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/mipop/cropimage/MenuActivity$6;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/mipop/cropimage/MenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 172
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 173
    iget-object v1, p0, Lcom/android/mipop/cropimage/MenuActivity$6;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/MenuActivity;->finish()V

    .line 174
    return-void
.end method
