.class public Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/blacklist/c/b;
.implements Lcom/avira/android/blacklist/d/r;


# static fields
.field public static final BLACKLIST_OPTION_TAG:Ljava/lang/String; = "blacklist_option_tag"

.field public static final DATA_BUNDLE_TAG:Ljava/lang/String; = "data_bundle_tag"

.field public static final DISPLAY_OPTION_TAG:Ljava/lang/String; = "display_option_tag"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/CheckBox;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/avira/android/blacklist/a/i;

.field private h:Lcom/avira/android/blacklist/model/BLContactHistory;

.field private i:Lcom/avira/android/blacklist/d/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 376
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->a(Lcom/avira/android/blacklist/d/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/avira/android/blacklist/model/h;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/h;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->notifyDataSetChanged()V

    .line 300
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/avira/android/blacklist/a/j;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 170
    sget-object v0, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v0, v1, :cond_0

    const v0, 0x7f08025b

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v3}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    :goto_1
    return-void

    .line 174
    :cond_0
    const v0, 0x7f08025c

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f08022d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 269
    if-eqz p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->e()V

    .line 274
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->c()V

    .line 275
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a()V

    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 280
    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v3, v0}, Lcom/avira/android/blacklist/a/i;->a(Lcom/avira/android/utilities/s;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    :cond_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 287
    return-void

    .line 283
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)Lcom/avira/android/blacklist/a/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 362
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/a/i;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 364
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->c()V

    .line 365
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    if-lez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 258
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContactHistory;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avira/android/blacklist/d/n;->a(JLcom/avira/android/blacklist/d/j;)V

    .line 121
    new-instance v0, Lcom/avira/android/blacklist/activities/q;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/activities/q;-><init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->a()Lcom/avira/android/blacklist/a/j;

    move-result-object v0

    sget-object v1, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->c()V

    .line 236
    sget-object v0, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a(Lcom/avira/android/blacklist/a/j;)V

    .line 237
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    sget-object v1, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/a/i;->a(Lcom/avira/android/blacklist/a/j;)V

    .line 238
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->notifyDataSetChanged()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const v1, 0x7f080237

    const v0, 0x7f080234

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 90
    :sswitch_0
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->finish()V

    goto :goto_0

    .line 94
    :sswitch_1
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->openOptionsMenu()V

    goto :goto_0

    .line 98
    :sswitch_2
    const-string v2, ""

    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v3}, Lcom/avira/android/blacklist/a/i;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v5}, Lcom/avira/android/blacklist/a/i;->getCount()I

    move-result v5

    if-ne v3, v5, :cond_1

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    sget-object v3, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v1, 0x7f080253

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v3}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const v1, 0x7f080251

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Lcom/avira/android/custom/x;->DeleteCancelButtons:Lcom/avira/android/custom/x;

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/avira/android/blacklist/activities/r;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/activities/r;-><init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v3}, Lcom/avira/android/blacklist/a/i;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    sget-object v7, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v6, v7, :cond_3

    if-le v3, v8, :cond_2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const v1, 0x7f080252

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v0, v2, v8

    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v3}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v1, v2}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const v0, 0x7f080235

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    sget-object v6, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    if-ne v0, v6, :cond_6

    if-le v3, v8, :cond_4

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const v0, 0x7f080236

    goto :goto_5

    .line 102
    :sswitch_3
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/a/i;->a(Ljava/util/ArrayList;)V

    .line 110
    :goto_6
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/a/i;->b(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_6
    move-object v0, v2

    goto :goto_4

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x7f0e005e -> :sswitch_2
        0x7f0e006c -> :sswitch_0
        0x7f0e007e -> :sswitch_3
        0x7f0e0080 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->b:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->c:Landroid/widget/ImageButton;

    .line 72
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    .line 75
    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a:Landroid/widget/ListView;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    .line 78
    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 195
    const-string v0, "display_option_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    sget-object v3, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_CALL_HISTORY:Lcom/avira/android/blacklist/a/j;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-static {v0}, Lcom/avira/android/blacklist/a/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/a/j;

    move-result-object v3

    .line 202
    :cond_0
    const-string v0, "data_bundle_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 203
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    if-nez v0, :cond_1

    .line 205
    const-string v0, "blacklist_option_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    .line 207
    new-instance v0, Lcom/avira/android/blacklist/a/i;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/blacklist/a/i;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/a/j;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/c/b;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    .line 208
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    invoke-direct {p0, v3}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a(Lcom/avira/android/blacklist/a/j;)V

    .line 212
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a()V

    .line 214
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->h:Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContactHistory;->b()Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    sget-object v3, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V

    .line 218
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a(Z)V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->i:Lcom/avira/android/blacklist/d/j;

    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_CALL_HISTORY:Lcom/avira/android/blacklist/a/j;

    .line 153
    :goto_1
    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->a(Lcom/avira/android/blacklist/a/j;)V

    .line 154
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->b()V

    .line 155
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/a/i;->a(Lcom/avira/android/blacklist/a/j;)V

    .line 156
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->g:Lcom/avira/android/blacklist/a/i;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/i;->notifyDataSetChanged()V

    goto :goto_0

    .line 151
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_SMS_HISTORY:Lcom/avira/android/blacklist/a/j;

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0249
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 224
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 225
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    sget-object v3, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V

    .line 226
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 227
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 141
    const v1, 0x7f0e0248

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p3, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/custom/BaseFragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 250
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 251
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 252
    return-void
.end method
