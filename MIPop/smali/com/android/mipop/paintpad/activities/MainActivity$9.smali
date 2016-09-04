.class Lcom/android/mipop/paintpad/activities/MainActivity$9;
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
    .line 653
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$9;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/high16 v5, 0x40e00000    # 7.0f

    .line 668
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$9;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->imageEraserWidth:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2100(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity$9;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->density:F
    invoke-static {v3}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2000(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity$9;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->density:F
    invoke-static {v4}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2000(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    add-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$9;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->density:F
    invoke-static {v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$2000(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    invoke-static {v0}, Lcom/android/mipop/paintpad/tools/Brush;->setEraserWidtn(F)V

    .line 672
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 663
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 658
    return-void
.end method
