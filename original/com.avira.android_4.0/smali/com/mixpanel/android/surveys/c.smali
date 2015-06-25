.class final Lcom/mixpanel/android/surveys/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# static fields
.field private static final VIEW_TYPE_FIRST:I = 0x0

.field private static final VIEW_TYPE_LAST:I = 0x1

.field private static final VIEW_TYPE_MAX:I = 0x3

.field private static final VIEW_TYPE_MIDDLE:I = 0x2


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/mixpanel/android/surveys/c;->a:Ljava/util/List;

    .line 340
    iput-object p2, p0, Lcom/mixpanel/android/surveys/c;->b:Landroid/view/LayoutInflater;

    .line 341
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 355
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 364
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 371
    const/4 v0, -0x1

    .line 372
    if-nez p2, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/c;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/mixpanel/android/surveys/c;->b:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 387
    :cond_0
    sget v0, Lcom/mixpanel/android/b;->com_mixpanel_android_multiple_choice_answer_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 388
    iget-object v1, p0, Lcom/mixpanel/android/surveys/c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    return-object p2

    .line 375
    :pswitch_0
    sget v0, Lcom/mixpanel/android/c;->com_mixpanel_android_first_choice_answer:I

    goto :goto_0

    .line 378
    :pswitch_1
    sget v0, Lcom/mixpanel/android/c;->com_mixpanel_android_last_choice_answer:I

    goto :goto_0

    .line 381
    :pswitch_2
    sget v0, Lcom/mixpanel/android/c;->com_mixpanel_android_middle_choice_answer:I

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x3

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method
