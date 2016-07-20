.class Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/ScreenshotDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mSucceed:Z
    invoke-static {v0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$000(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$100(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    iget-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$102(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;
    invoke-static {v0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$200(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Lcom/zte/zgesture/ui/TipsView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mBitMap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$100(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mTipsView:Lcom/zte/zgesture/ui/TipsView;
    invoke-static {v0}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$200(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;)Lcom/zte/zgesture/ui/TipsView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/TipsView;->setText(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity$1;->this$0:Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->mSucceed:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;->access$002(Lcom/zte/zgesture/setting/ScreenshotDemoActivity;Z)Z

    .line 47
    :cond_0
    return-void
.end method
