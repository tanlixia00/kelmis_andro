package com.client.kelmis.model;

public class PenerimaBantuan {

    String id;
    String nama_keluarga;
    String alamat;
    String rt;
    String status;
    String tanggal;

    public PenerimaBantuan(String id, String nama_keluarga, String alamat, String rt, String status, String tanggal) {
        this.id = id;
        this.nama_keluarga = nama_keluarga;
        this.alamat = alamat;
        this.rt = rt;
        this.status = status;
        this.tanggal = tanggal;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNama_keluarga() {
        return nama_keluarga;
    }

    public void setNama_keluarga(String nama_keluarga) {
        this.nama_keluarga = nama_keluarga;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getRt() {
        return rt;
    }

    public void setRt(String rt) {
        this.rt = rt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTanggal() {
        return tanggal;
    }

    public void setTanggal(String tanggal) {
        this.tanggal = tanggal;
    }
}
