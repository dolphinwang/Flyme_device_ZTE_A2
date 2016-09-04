.class Lcom/android/mipop/paintpad/activities/MainActivity$5;
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
    .line 471
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnUnselectedRes:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 476
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$702(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 477
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 479
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

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

    .line 481
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastColorButton(Landroid/content/Context;I)V

    .line 483
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastColorPicker(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060132

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z
    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1002(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    .line 486
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1000(Lcom/android/mipop/paintpad/activities/MainActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/mipop/paintpad/tools/Brush;->setRainbow(Z)V

    .line 487
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getPen()Lcom/android/mipop/paintpad/tools/Brush;

    .line 488
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastColor(Landroid/content/Context;I)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1100(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    .line 499
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z
    invoke-static {v0, v4}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1002(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    .line 493
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1000(Lcom/android/mipop/paintpad/activities/MainActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/mipop/paintpad/tools/Brush;->setRainbow(Z)V

    .line 494
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getPen()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->value:I

    invoke-virtual {v1, v0}, Lcom/android/mipop/paintpad/tools/Brush;->setColor(I)V

    .line 495
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$5;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->value:I

    invoke-static {v1, v0}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastColor(Landroid/content/Context;I)V

    goto :goto_0
.end method
