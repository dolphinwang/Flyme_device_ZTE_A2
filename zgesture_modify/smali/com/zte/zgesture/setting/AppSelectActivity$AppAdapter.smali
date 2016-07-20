.class Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/AppSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/AppSelectActivity;


# direct methods
.method private constructor <init>(Lcom/zte/zgesture/setting/AppSelectActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;->this$0:Lcom/zte/zgesture/setting/AppSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zgesture/setting/AppSelectActivity;Lcom/zte/zgesture/setting/AppSelectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/zgesture/setting/AppSelectActivity;
    .param p2, "x1"    # Lcom/zte/zgesture/setting/AppSelectActivity$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;-><init>(Lcom/zte/zgesture/setting/AppSelectActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;->this$0:Lcom/zte/zgesture/setting/AppSelectActivity;

    # getter for: Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AppSelectActivity;->access$200(Lcom/zte/zgesture/setting/AppSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;->this$0:Lcom/zte/zgesture/setting/AppSelectActivity;

    # getter for: Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/zgesture/setting/AppSelectActivity;->access$200(Lcom/zte/zgesture/setting/AppSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 165
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "viewHolder":Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 172
    new-instance v1, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
    invoke-direct {v1, p0, v4}, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;-><init>(Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;Lcom/zte/zgesture/setting/AppSelectActivity$1;)V

    .line 173
    .restart local v1    # "viewHolder":Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
    iget-object v2, p0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;->this$0:Lcom/zte/zgesture/setting/AppSelectActivity;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/AppSelectActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 174
    const v2, 0x7f060062

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 175
    const v2, 0x7f060061

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;->appImage:Landroid/widget/ImageView;

    .line 176
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;->this$0:Lcom/zte/zgesture/setting/AppSelectActivity;

    # getter for: Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/zte/zgesture/setting/AppSelectActivity;->access$200(Lcom/zte/zgesture/setting/AppSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;

    .line 182
    .local v0, "appItem":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    iget-object v2, v1, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, v1, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;->appImage:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-object p2

    .line 178
    .end local v0    # "appItem":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
    check-cast v1, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
    goto :goto_0
.end method
