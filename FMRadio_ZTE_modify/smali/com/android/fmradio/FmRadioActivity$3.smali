.class Lcom/android/fmradio/FmRadioActivity$3;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioActivity$3;->this$0:Lcom/android/fmradio/FmRadioActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$3;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$3;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    long-to-int v0, p4

    .line 245
    .local v0, "freq":I
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$3;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->tuneToStation(I)V
    invoke-static {v1, v0}, Lcom/android/fmradio/FmRadioActivity;->access$5(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 247
    .end local v0    # "freq":I
    :cond_0
    return-void
.end method
