.class public final Lcom/avira/android/debug/d;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Date;

.field private c:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/avira/android/debug/d;->b:Ljava/util/Date;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/avira/android/debug/d;->c:Ljava/text/SimpleDateFormat;

    .line 25
    invoke-static {}, Lcom/avira/android/c/a;->a()Lcom/avira/android/c/a;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/avira/android/debug/d;->a:Landroid/widget/ArrayAdapter;

    .line 29
    new-instance v1, Lcom/avira/android/debug/e;

    invoke-direct {v1, p0}, Lcom/avira/android/debug/e;-><init>(Lcom/avira/android/debug/d;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/h;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/avira/android/debug/d;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/avira/android/debug/d;->b:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/debug/d;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/avira/android/debug/d;->c:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/debug/d;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/avira/android/debug/d;->a:Landroid/widget/ArrayAdapter;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/d;->setContentView(I)V

    .line 51
    const-string v0, "Searching location..."

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/avira/android/debug/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 54
    iget-object v1, p0, Lcom/avira/android/debug/d;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Lcom/avira/android/debug/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 58
    return-void
.end method
