.class Lcom/zte/mifavor/actionbar/ToolBarActionBar$2;
.super Ljava/lang/Object;
.source "ToolBarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBar;
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
    .line 214
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$2;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$2;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->showOverflowMenu()Z

    .line 217
    return-void
.end method
