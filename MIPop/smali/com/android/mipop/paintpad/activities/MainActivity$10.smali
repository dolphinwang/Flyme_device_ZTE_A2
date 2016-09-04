.class Lcom/android/mipop/paintpad/activities/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;


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
    .line 677
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z
    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1002(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    .line 682
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1000(Lcom/android/mipop/paintpad/activities/MainActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/mipop/paintpad/tools/Brush;->setRainbow(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

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

    .line 685
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getPen()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mipop/paintpad/tools/Brush;->setColor(I)V

    .line 686
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastColor(Landroid/content/Context;I)V

    .line 687
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastColorPicker(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 688
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$10;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1100(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    .line 689
    return-void
.end method
