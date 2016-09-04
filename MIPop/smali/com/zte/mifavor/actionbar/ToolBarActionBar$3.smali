.class Lcom/zte/mifavor/actionbar/ToolBarActionBar$3;
.super Ljava/lang/Object;
.source "ToolBarActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$3;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$3;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->collapseActionView()V

    .line 1379
    return-void
.end method
