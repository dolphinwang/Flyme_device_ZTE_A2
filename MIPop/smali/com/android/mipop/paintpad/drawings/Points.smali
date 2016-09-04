.class public Lcom/android/mipop/paintpad/drawings/Points;
.super Lcom/android/mipop/paintpad/drawings/Drawing;
.source "Points.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;
    }
.end annotation


# instance fields
.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mipop/paintpad/drawings/Drawing;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->points:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->pen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->pen:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1}, Lcom/android/mipop/paintpad/drawings/Points;->drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method protected drawShape(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopX:F

    iget v1, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopY:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method public fingerDown(FFLandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->drawed:Z

    .line 55
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopX:F

    .line 56
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopY:F

    .line 57
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->points:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;-><init>(Lcom/android/mipop/paintpad/drawings/Points;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/drawings/Points;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method public fingerMove(FFLandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 65
    iput p1, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopX:F

    .line 66
    iput p2, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopY:F

    .line 67
    iget-object v0, p0, Lcom/android/mipop/paintpad/drawings/Points;->points:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;-><init>(Lcom/android/mipop/paintpad/drawings/Points;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0, p3}, Lcom/android/mipop/paintpad/drawings/Points;->draw(Landroid/graphics/Canvas;)V

    .line 69
    return-void
.end method

.method public reDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/mipop/paintpad/drawings/Points;->points:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;

    .line 76
    .local v1, "point":Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;
    invoke-virtual {v1}, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopX:F

    .line 77
    invoke-virtual {v1}, Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/mipop/paintpad/drawings/Points;->stopY:F

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/drawings/Points;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 80
    .end local v1    # "point":Lcom/android/mipop/paintpad/drawings/Points$pointsRecord;
    :cond_0
    return-void
.end method
