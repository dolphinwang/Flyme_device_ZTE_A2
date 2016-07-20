.class Lcom/zte/zgesture/MultitouchInterceptManager$4;
.super Ljava/lang/Object;
.source "MultitouchInterceptManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 206
    iput-object p1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$4;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/zgesture/MultitouchInterceptManager$4;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->multitouchApp:Lcom/zte/zgesture/data/MultitouchApp;
    invoke-static {v0}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$200(Lcom/zte/zgesture/MultitouchInterceptManager;)Lcom/zte/zgesture/data/MultitouchApp;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/MultitouchInterceptManager$4;->this$0:Lcom/zte/zgesture/MultitouchInterceptManager;

    # getter for: Lcom/zte/zgesture/MultitouchInterceptManager;->curPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/zgesture/MultitouchInterceptManager;->access$000(Lcom/zte/zgesture/MultitouchInterceptManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/data/MultitouchApp;->setNoRemind(Ljava/lang/String;Z)V

    .line 211
    return-void
.end method
