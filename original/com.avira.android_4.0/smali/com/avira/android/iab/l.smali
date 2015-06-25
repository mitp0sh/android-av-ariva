.class final Lcom/avira/android/iab/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/k;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/k;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/avira/android/iab/l;->a:Lcom/avira/android/iab/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/avira/android/iab/l;->a:Lcom/avira/android/iab/k;

    iget-object v0, v0, Lcom/avira/android/iab/k;->a:Lcom/avira/android/iab/IABRequestService;

    new-instance v1, Lcom/avira/android/iab/models/IABResponse;

    const-string v2, "success"

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;Landroid/os/Parcelable;)V

    .line 376
    return-void
.end method
