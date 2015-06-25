.class public Lcom/avira/android/custom/CustomSpinner;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mItemListCollection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/avira/android/custom/SpinnerDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsList:[Lcom/avira/android/custom/SpinnerDialogItem;

.field private mOnSelectionChangedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/custom/g;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

.field private mSpinnerDialog:Lcom/avira/android/custom/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/avira/android/custom/CustomSpinner;->initialize()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0}, Lcom/avira/android/custom/CustomSpinner;->initialize()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0}, Lcom/avira/android/custom/CustomSpinner;->initialize()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/avira/android/custom/CustomSpinner;)Lcom/avira/android/custom/SpinnerDialogItem;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/avira/android/custom/CustomSpinner;Lcom/avira/android/custom/SpinnerDialogItem;)Lcom/avira/android/custom/SpinnerDialogItem;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/avira/android/custom/CustomSpinner;)Lcom/avira/android/custom/ad;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSpinnerDialog:Lcom/avira/android/custom/ad;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avira/android/custom/CustomSpinner;Lcom/avira/android/custom/SpinnerDialogItem;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/avira/android/custom/CustomSpinner;->fireOnSelectionChanged(Lcom/avira/android/custom/SpinnerDialogItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avira/android/custom/CustomSpinner;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method private fireOnSelectionChanged(Lcom/avira/android/custom/SpinnerDialogItem;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/g;

    .line 215
    invoke-interface {v0}, Lcom/avira/android/custom/g;->a()V

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iput-object v2, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mItemListCollection:Ljava/util/HashMap;

    .line 84
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/avira/android/custom/CustomSpinner;->setGravity(I)V

    .line 85
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/avira/android/custom/CustomSpinner;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method private setItemListCollection([Lcom/avira/android/custom/SpinnerDialogItem;)V
    .locals 5

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avira/android/custom/CustomSpinner;->mItemsList:[Lcom/avira/android/custom/SpinnerDialogItem;

    .line 128
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 130
    invoke-virtual {v2}, Lcom/avira/android/custom/SpinnerDialogItem;->f()Lcom/avira/android/custom/h;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_0

    .line 133
    iget-object v4, p0, Lcom/avira/android/custom/CustomSpinner;->mItemListCollection:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/avira/android/custom/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mItemsList:[Lcom/avira/android/custom/SpinnerDialogItem;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mItemsList:[Lcom/avira/android/custom/SpinnerDialogItem;

    array-length v0, v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItem()Lcom/avira/android/custom/SpinnerDialogItem;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    return-object v0
.end method

.method public getSelectedItemText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    const-string v0, ""

    .line 156
    iget-object v1, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->a()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method public removeOnSelectionChanged(Lcom/avira/android/custom/g;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method

.method public selectItem(Lcom/avira/android/custom/h;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mItemListCollection:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/avira/android/custom/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/SpinnerDialogItem;

    .line 141
    if-eqz v0, :cond_0

    .line 143
    iput-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    .line 144
    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/custom/CustomSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setAdapter([Lcom/avira/android/custom/SpinnerDialogItem;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/avira/android/custom/CustomSpinner;->setItemListCollection([Lcom/avira/android/custom/SpinnerDialogItem;)V

    .line 95
    new-instance v0, Lcom/avira/android/custom/ad;

    invoke-direct {v0, p2, p1}, Lcom/avira/android/custom/ad;-><init>(Ljava/lang/String;[Lcom/avira/android/custom/SpinnerDialogItem;)V

    iput-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSpinnerDialog:Lcom/avira/android/custom/ad;

    .line 96
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSpinnerDialog:Lcom/avira/android/custom/ad;

    new-instance v1, Lcom/avira/android/custom/e;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/e;-><init>(Lcom/avira/android/custom/CustomSpinner;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/ad;->a(Lcom/avira/android/custom/ac;)V

    .line 108
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 110
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/custom/CustomSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 111
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;

    .line 114
    :cond_0
    iput-object p3, p0, Lcom/avira/android/custom/CustomSpinner;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 115
    new-instance v0, Lcom/avira/android/custom/f;

    invoke-direct {v0, p0}, Lcom/avira/android/custom/f;-><init>(Lcom/avira/android/custom/CustomSpinner;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/custom/CustomSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public setOnSelectionChanged(Lcom/avira/android/custom/g;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/avira/android/custom/CustomSpinner;->mOnSelectionChangedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    return-void
.end method
