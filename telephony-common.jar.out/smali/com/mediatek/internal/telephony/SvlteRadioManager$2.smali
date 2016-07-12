.class Lcom/mediatek/internal/telephony/SvlteRadioManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1157
    if-nez p2, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver Receive action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$100(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V

    .line 1160
    const-string v1, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    # invokes: Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOffRequestIfBlocked()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->access$200(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    goto :goto_0
.end method
