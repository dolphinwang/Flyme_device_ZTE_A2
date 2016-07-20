.class Lcom/zte/zgesture/setting/SettingSwitchPreference$1;
.super Ljava/lang/Object;
.source "SettingSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/SettingSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/SettingSwitchPreference;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/SettingSwitchPreference;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference$1;->this$0:Lcom/zte/zgesture/setting/SettingSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference$1;->this$0:Lcom/zte/zgesture/setting/SettingSwitchPreference;

    # getter for: Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;
    invoke-static {v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->access$000(Lcom/zte/zgesture/setting/SettingSwitchPreference;)Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;->onCheckedChanged(Z)V

    .line 78
    return-void
.end method
