.class final Lcom/avira/android/blacklist/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/avira/android/custom/SpinnerDialogItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 283
    check-cast p1, Lcom/avira/android/custom/SpinnerDialogItem;

    check-cast p2, Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-virtual {p1}, Lcom/avira/android/custom/SpinnerDialogItem;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/avira/android/custom/SpinnerDialogItem;->g()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
