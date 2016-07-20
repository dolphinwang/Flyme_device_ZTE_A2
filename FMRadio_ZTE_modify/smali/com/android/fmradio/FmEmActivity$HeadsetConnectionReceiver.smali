.class Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmEmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmEmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmEmActivity;


# direct methods
.method private constructor <init>(Lcom/android/fmradio/FmEmActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fmradio/FmEmActivity;Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;-><init>(Lcom/android/fmradio/FmEmActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/android/fmradio/FmEmActivity;->access$48(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/android/fmradio/FmEmActivity;->access$63(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/android/fmradio/FmEmActivity;->access$48(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity$HeadsetConnectionReceiver;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/android/fmradio/FmEmActivity;->access$63(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method
