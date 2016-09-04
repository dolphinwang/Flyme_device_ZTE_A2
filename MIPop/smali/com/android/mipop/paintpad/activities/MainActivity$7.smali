.class Lcom/android/mipop/paintpad/activities/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/paintpad/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f090553

    const/4 v4, 0x6

    .line 569
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/android/mipop/paintpad/view/PaintPad;->setLayerType(ILandroid/graphics/Paint;)V

    .line 570
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawing()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastDrawingID:I
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1500(Lcom/android/mipop/paintpad/activities/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawing(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnUnselectedRes:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 573
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1602(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 574
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 575
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg index lastPen= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastPen(Landroid/content/Context;I)V

    .line 580
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->showPenMenu()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1700(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 607
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1100(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    .line 608
    return-void

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->menuTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 585
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->setBlur()V

    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->menuTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 589
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->setEmboss()V

    .line 590
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Lcom/android/mipop/paintpad/view/PaintPad;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 593
    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->menuTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 594
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->setNormal()V

    goto :goto_0

    .line 597
    :pswitch_3
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->menuTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090552

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 598
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawing()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mipop/paintpad/view/PaintPad;->getDrawing()I

    move-result v1

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastDrawingID:I
    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1502(Lcom/android/mipop/paintpad/activities/MainActivity;I)I

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawing(I)V

    .line 601
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$7;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->showEraserMenu()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1900(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x7f06011a
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
