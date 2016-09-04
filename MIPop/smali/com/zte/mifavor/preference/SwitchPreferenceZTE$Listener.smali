.class public Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;
.super Ljava/lang/Object;
.source "SwitchPreferenceZTE.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/SwitchPreferenceZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/SwitchPreferenceZTE;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/preference/SwitchPreferenceZTE;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;->this$0:Lcom/zte/mifavor/preference/SwitchPreferenceZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;->this$0:Lcom/zte/mifavor/preference/SwitchPreferenceZTE;

    # getter for: Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->access$000(Lcom/zte/mifavor/preference/SwitchPreferenceZTE;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;->this$0:Lcom/zte/mifavor/preference/SwitchPreferenceZTE;

    # getter for: Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->access$000(Lcom/zte/mifavor/preference/SwitchPreferenceZTE;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;->this$0:Lcom/zte/mifavor/preference/SwitchPreferenceZTE;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 70
    :goto_1
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;->this$0:Lcom/zte/mifavor/preference/SwitchPreferenceZTE;

    invoke-virtual {v0, p2}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setChecked(Z)V

    goto :goto_1
.end method
