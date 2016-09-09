.class Lcom/zte/miravision/MiravisionActivity$6;
.super Ljava/lang/Object;
.source "MiravisionActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/miravision/MiravisionActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/miravision/MiravisionActivity;


# direct methods
.method constructor <init>(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/miravision/MiravisionActivity$6;->this$0:Lcom/zte/miravision/MiravisionActivity;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$6;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->resetToDefault()V
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$22(Lcom/zte/miravision/MiravisionActivity;)V

    .line 752
    const/4 v0, 0x0

    return v0
.end method
