.class public Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;
.super Lcom/zte/zgesture/setting/SettingSwitchPreference;
.source "SettingDrawItemSwitchPreference.java"


# instance fields
.field private mDrawImage:Landroid/graphics/drawable/Drawable;

.field private mSegmentVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->mSegmentVisible:Z

    .line 24
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v0, :cond_0

    .line 25
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setLayoutResource(I)V

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->setLayoutResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 40
    const v2, 0x7f060063

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->mDrawImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-boolean v2, p0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->mSegmentVisible:Z

    if-nez v2, :cond_0

    .line 44
    const v2, 0x7f060064

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "segmentView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .end local v1    # "segmentView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->mDrawImage:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method public setSegmentViewVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/SettingDrawItemSwitchPreference;->mSegmentVisible:Z

    .line 19
    return-void
.end method
