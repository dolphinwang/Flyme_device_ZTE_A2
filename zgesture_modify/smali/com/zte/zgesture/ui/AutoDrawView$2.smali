.class Lcom/zte/zgesture/ui/AutoDrawView$2;
.super Ljava/lang/Object;
.source "AutoDrawView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/ui/AutoDrawView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/ui/AutoDrawView;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/ui/AutoDrawView;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x44700000    # 960.0f

    .line 163
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$200(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$300(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 166
    .local v1, "viewWidth":F
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 167
    .local v0, "viewHeight":F
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    div-float v3, v1, v4

    iput v3, v2, Lcom/zte/zgesture/ui/AutoDrawView;->mXFactor:F

    .line 168
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    div-float v3, v0, v4

    iput v3, v2, Lcom/zte/zgesture/ui/AutoDrawView;->mYFactor:F

    .line 169
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    # setter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPath:Landroid/graphics/Path;
    invoke-static {v2, v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$402(Lcom/zte/zgesture/ui/AutoDrawView;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 170
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPath:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$400(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$500(Lcom/zte/zgesture/ui/AutoDrawView;)[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    iget v4, v4, Lcom/zte/zgesture/ui/AutoDrawView;->mXFactor:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;
    invoke-static {v4}, Lcom/zte/zgesture/ui/AutoDrawView;->access$500(Lcom/zte/zgesture/ui/AutoDrawView;)[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    iget v5, v5, Lcom/zte/zgesture/ui/AutoDrawView;->mYFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v3, 0x1

    # setter for: Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I
    invoke-static {v2, v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$602(Lcom/zte/zgesture/ui/AutoDrawView;I)I

    .line 173
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$200(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$2;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$300(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    const-string v2, "AutoDrawView : mStartDrawRunnable"

    invoke-static {v2}, Lcom/zte/zgesture/tools/GLog;->debug(Ljava/lang/String;)I

    .line 175
    return-void
.end method
