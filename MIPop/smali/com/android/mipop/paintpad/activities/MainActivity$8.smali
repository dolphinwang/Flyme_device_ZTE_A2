.class Lcom/android/mipop/paintpad/activities/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 627
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$8;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 642
    if-nez p2, :cond_0

    .line 643
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$8;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->density:F
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2000(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setStrokeWidth(F)V

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$8;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->setSaveLastWidth(Landroid/content/Context;I)V

    .line 648
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$8;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1100(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    .line 649
    return-void

    .line 645
    :cond_0
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$8;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->density:F
    invoke-static {v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2000(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 637
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 632
    return-void
.end method
