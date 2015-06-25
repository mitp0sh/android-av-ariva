.class final Lcom/avira/android/utilities/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/utilities/y;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/avira/android/utilities/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/avira/android/utilities/n;->a:I

    invoke-static {v0}, Lcom/avira/android/utilities/l;->a(I)V

    .line 191
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/utilities/l;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no server connectivity"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/avira/android/utilities/n;->a:I

    invoke-static {v0}, Lcom/avira/android/utilities/l;->b(I)V

    .line 199
    return-void
.end method
