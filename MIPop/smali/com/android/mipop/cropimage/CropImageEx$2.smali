.class Lcom/android/mipop/cropimage/CropImageEx$2;
.super Landroid/os/Handler;
.source "CropImageEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/CropImageEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/CropImageEx;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$2;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
