.class public final Lcom/avira/android/custom/ad;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final ITEMS_TAG:Ljava/lang/String; = "items_array"

.field public static final TAG:Ljava/lang/String; = "com.avira.android.custom.SpinnerDialogFragment"

.field public static final TITLE_TEXT_TAG:Ljava/lang/String; = "title_text"


# instance fields
.field private a:Lcom/avira/android/custom/ac;

.field private b:Ljava/lang/String;

.field private c:Lcom/avira/android/custom/SpinnerDialogItem;

.field private d:[Lcom/avira/android/custom/SpinnerDialogItem;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/avira/android/custom/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/avira/android/custom/ad;->a:Lcom/avira/android/custom/ac;

    .line 117
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/ad;->setArguments(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/avira/android/custom/SpinnerDialogItem;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/custom/ad;->a:Lcom/avira/android/custom/ac;

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "title cannot be null or have zero length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v1, "title_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "items_array"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/ad;->setArguments(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/avira/android/custom/ad;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/custom/ad;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/custom/ad;Lcom/avira/android/custom/SpinnerDialogItem;)Lcom/avira/android/custom/SpinnerDialogItem;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avira/android/custom/ad;->c:Lcom/avira/android/custom/SpinnerDialogItem;

    return-object p1
.end method

.method static synthetic b(Lcom/avira/android/custom/ad;)Lcom/avira/android/custom/ac;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/custom/ad;->a:Lcom/avira/android/custom/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/custom/ad;)Lcom/avira/android/custom/ad;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/custom/ad;->h:Lcom/avira/android/custom/ad;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/avira/android/custom/SpinnerDialogItem;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/avira/android/custom/ad;->c:Lcom/avira/android/custom/SpinnerDialogItem;

    return-object v0
.end method

.method public final a(Lcom/avira/android/custom/ac;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/avira/android/custom/ad;->a:Lcom/avira/android/custom/ac;

    .line 196
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const/4 v0, 0x1

    const v1, 0x7f090003

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/custom/ad;->setStyle(II)V

    .line 126
    invoke-virtual {p0}, Lcom/avira/android/custom/ad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 129
    const-string v1, "title_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/android/custom/ad;->b:Ljava/lang/String;

    .line 130
    const-string v1, "items_array"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 131
    instance-of v1, v0, [Lcom/avira/android/custom/SpinnerDialogItem;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, [Lcom/avira/android/custom/SpinnerDialogItem;

    iput-object v0, p0, Lcom/avira/android/custom/ad;->d:[Lcom/avira/android/custom/SpinnerDialogItem;

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/custom/ad;->c:Lcom/avira/android/custom/SpinnerDialogItem;

    .line 137
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/avira/android/custom/ad;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 143
    iput-object p0, p0, Lcom/avira/android/custom/ad;->h:Lcom/avira/android/custom/ad;

    .line 144
    const v0, 0x7f0300a2

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/custom/ad;->e:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/avira/android/custom/ad;->e:Landroid/view/View;

    const v1, 0x7f0e0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/avira/android/custom/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Lcom/avira/android/custom/ag;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/avira/android/custom/ad;->d:[Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/avira/android/custom/ag;-><init>(Lcom/avira/android/custom/ad;Landroid/content/Context;Ljava/util/List;)V

    .line 151
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/ag;->setDropDownViewResource(I)V

    .line 153
    iget-object v0, p0, Lcom/avira/android/custom/ad;->e:Landroid/view/View;

    const v2, 0x7f0e01ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/custom/ad;->g:Landroid/widget/ListView;

    .line 154
    iget-object v0, p0, Lcom/avira/android/custom/ad;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/avira/android/custom/ad;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/avira/android/custom/ae;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/ae;-><init>(Lcom/avira/android/custom/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/avira/android/custom/ad;->e:Landroid/view/View;

    const v1, 0x7f0e01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/ad;->f:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/avira/android/custom/ad;->f:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/custom/af;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/af;-><init>(Lcom/avira/android/custom/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/avira/android/custom/ad;->d:[Lcom/avira/android/custom/SpinnerDialogItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/ad;->d:[Lcom/avira/android/custom/SpinnerDialogItem;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/avira/android/custom/ad;->d:[Lcom/avira/android/custom/SpinnerDialogItem;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/avira/android/custom/ad;->c:Lcom/avira/android/custom/SpinnerDialogItem;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/avira/android/custom/ad;->e:Landroid/view/View;

    return-object v0
.end method
