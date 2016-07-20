.class Lcom/android/fmradio/FmRadioActivity$9;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/android/fmradio/FreqSelectionBar$OnFrequencyChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmRadioActivity;->registerButtonClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreqChange(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v0}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static {v0, p1}, Lcom/android/fmradio/FmRadioActivity;->access$19(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 2002
    :cond_0
    return-void
.end method

.method public onFreqTun(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v0}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/fmradio/FmRadioActivity$9;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->tuneToStation(I)V
    invoke-static {v0, p1}, Lcom/android/fmradio/FmRadioActivity;->access$5(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 2008
    :cond_0
    return-void
.end method
