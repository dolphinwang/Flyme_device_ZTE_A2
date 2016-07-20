.class Lcom/zte/zgesture/MultitouchInterceptManager$6;
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
    .line 231
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$6;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$6;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$1000(Lcom/zte/zgesture/MultitouchInterceptManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    return-void
.end method
