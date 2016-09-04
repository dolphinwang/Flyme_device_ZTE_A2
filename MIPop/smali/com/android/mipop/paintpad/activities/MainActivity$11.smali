.class Lcom/android/mipop/paintpad/activities/MainActivity$11;
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
    .line 693
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnUnselectedRes:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 699
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v0, p1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2202(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 700
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 702
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v0, v0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->value:I

    invoke-virtual {v1, v0}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawing(I)V

    .line 703
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg index shape= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

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

    .line 706
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$11;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastShape(Landroid/content/Context;I)V

    .line 708
    return-void
.end method
