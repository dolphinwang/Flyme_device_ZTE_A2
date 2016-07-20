.class Lcom/zte/zgesture/ui/AutoDrawView$3;
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
    .line 178
    iput-object p1, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 182
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$600(Lcom/zte/zgesture/ui/AutoDrawView;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPoCount:I
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$700(Lcom/zte/zgesture/ui/AutoDrawView;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 183
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPath:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$400(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$500(Lcom/zte/zgesture/ui/AutoDrawView;)[Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I
    invoke-static {v4}, Lcom/zte/zgesture/ui/AutoDrawView;->access$600(Lcom/zte/zgesture/ui/AutoDrawView;)I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    iget v4, v4, Lcom/zte/zgesture/ui/AutoDrawView;->mXFactor:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPointList:[Landroid/graphics/Point;
    invoke-static {v4}, Lcom/zte/zgesture/ui/AutoDrawView;->access$500(Lcom/zte/zgesture/ui/AutoDrawView;)[Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I
    invoke-static {v5}, Lcom/zte/zgesture/ui/AutoDrawView;->access$600(Lcom/zte/zgesture/ui/AutoDrawView;)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    iget v5, v5, Lcom/zte/zgesture/ui/AutoDrawView;->mYFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 188
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 190
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPath:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$400(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$800(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 199
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # operator++ for: Lcom/zte/zgesture/ui/AutoDrawView;->mCurrentFrame:I
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$608(Lcom/zte/zgesture/ui/AutoDrawView;)I

    .line 200
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$200(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mDrawFrameRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$300(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    return-void

    .line 191
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 196
    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$000(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    throw v2

    .line 202
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    iget-object v2, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/zgesture/ui/AutoDrawView;->access$200(Lcom/zte/zgesture/ui/AutoDrawView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/ui/AutoDrawView$3;->this$0:Lcom/zte/zgesture/ui/AutoDrawView;

    # getter for: Lcom/zte/zgesture/ui/AutoDrawView;->mRedrawRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/zte/zgesture/ui/AutoDrawView;->access$900(Lcom/zte/zgesture/ui/AutoDrawView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
