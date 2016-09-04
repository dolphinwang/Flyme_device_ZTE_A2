.class Lcom/zte/mifavor/actionbar/ActivityCommon$1;
.super Ljava/lang/Object;
.source "ActivityCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ActivityCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ActivityCommon;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$1;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$1;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->preparePanel()Z

    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$1;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuPosted:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->access$002(Lcom/zte/mifavor/actionbar/ActivityCommon;Z)Z

    .line 71
    return-void
.end method
