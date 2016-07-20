.class Lcom/zte/zgesture/MultitouchInterceptManager$5;
.super Ljava/lang/Object;
.source "MultitouchInterceptManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/MultitouchInterceptManager;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/MultitouchInterceptManager;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/MultitouchInterceptManager;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$5;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$5;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$900(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_screen_shot"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 224
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$5;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$900(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_switch_app"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 225
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$5;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$900(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_close_app"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 226
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$5;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$900(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 227
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$5;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$1000(Lcom/zte/zgesture/MultitouchInterceptManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 228
    return-void
.end method
