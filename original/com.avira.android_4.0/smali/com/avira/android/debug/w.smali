.class final Lcom/avira/android/debug/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/DebuggingPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/avira/android/debug/w;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v0, v0, p2

    sput v0, Lcom/avira/android/iab/a/k;->b:I

    .line 455
    iget-object v0, p0, Lcom/avira/android/debug/w;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-static {v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b(Lcom/avira/android/debug/DebuggingPreferencesActivity;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iabSelectServerError"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/avira/android/iab/a/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    return-void
.end method
