.class Lcom/android/fmradio/FMRadioEngineer$2;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FMRadioEngineer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :pswitch_0
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "btn stop: CLICK!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v0}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    const/16 v1, 0x36e

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    const/16 v1, 0x37d

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    const/16 v1, 0x3a2

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    const/16 v1, 0x3b6

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 221
    :pswitch_5
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    const/16 v1, 0x3dd

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 224
    :pswitch_6
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    const/16 v1, 0x3e5

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 233
    :pswitch_7
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "btn pass_button: CLICK!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->exitService()V
    invoke-static {v0}, Lcom/android/fmradio/FMRadioEngineer;->access$2(Lcom/android/fmradio/FMRadioEngineer;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->refreshRecordNotIdle()V
    invoke-static {v0}, Lcom/android/fmradio/FMRadioEngineer;->access$4(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 253
    iget-object v0, p0, Lcom/android/fmradio/FMRadioEngineer$2;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v0}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->stopRecordingAsync()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x7f060062
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
