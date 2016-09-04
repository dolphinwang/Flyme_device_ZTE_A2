.class Lcom/zte/mifavor/settings/Sim$1;
.super Landroid/os/Handler;
.source "Sim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/settings/Sim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/settings/Sim;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/settings/Sim;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zte/mifavor/settings/Sim$1;->this$0:Lcom/zte/mifavor/settings/Sim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 124
    :pswitch_0
    new-instance v0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;

    iget-object v1, p0, Lcom/zte/mifavor/settings/Sim$1;->this$0:Lcom/zte/mifavor/settings/Sim;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;-><init>(Lcom/zte/mifavor/settings/Sim;Lcom/zte/mifavor/settings/Sim$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
