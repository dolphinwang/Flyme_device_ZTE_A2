.class Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;
.super Landroid/os/AsyncTask;
.source "Sim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/settings/Sim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSimInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private names:[Lcom/zte/mifavor/settings/Sim$SimName;

.field private notify:Z

.field final synthetic this$0:Lcom/zte/mifavor/settings/Sim;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/settings/Sim;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->this$0:Lcom/zte/mifavor/settings/Sim;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/settings/Sim;Lcom/zte/mifavor/settings/Sim$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/settings/Sim;
    .param p2, "x1"    # Lcom/zte/mifavor/settings/Sim$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;-><init>(Lcom/zte/mifavor/settings/Sim;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->notify:Z

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->this$0:Lcom/zte/mifavor/settings/Sim;

    # invokes: Lcom/zte/mifavor/settings/Sim;->update()[Lcom/zte/mifavor/settings/Sim$SimName;
    invoke-static {v0}, Lcom/zte/mifavor/settings/Sim;->access$000(Lcom/zte/mifavor/settings/Sim;)[Lcom/zte/mifavor/settings/Sim$SimName;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->names:[Lcom/zte/mifavor/settings/Sim$SimName;

    .line 101
    const/4 v0, 0x0

    return-object v0

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->names:[Lcom/zte/mifavor/settings/Sim$SimName;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->this$0:Lcom/zte/mifavor/settings/Sim;

    # getter for: Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;
    invoke-static {v2}, Lcom/zte/mifavor/settings/Sim;->access$100(Lcom/zte/mifavor/settings/Sim;)[Lcom/zte/mifavor/settings/Sim$SimName;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->notify:Z

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "ZteSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->names:[Lcom/zte/mifavor/settings/Sim$SimName;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.mifavor.settings.SIM_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->this$0:Lcom/zte/mifavor/settings/Sim;

    # getter for: Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/settings/Sim;->access$200(Lcom/zte/mifavor/settings/Sim;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->this$0:Lcom/zte/mifavor/settings/Sim;

    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;->names:[Lcom/zte/mifavor/settings/Sim$SimName;

    # setter for: Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;
    invoke-static {v1, v2}, Lcom/zte/mifavor/settings/Sim;->access$102(Lcom/zte/mifavor/settings/Sim;[Lcom/zte/mifavor/settings/Sim$SimName;)[Lcom/zte/mifavor/settings/Sim$SimName;

    .line 113
    return-void
.end method
