package ru.itpark.app.models;

import lombok.*;
import org.springframework.context.annotation.Bean;
import sun.plugin.util.UserProfile;

import javax.jws.soap.SOAPBinding;
import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;
import java.util.prefs.Preferences;

@Builder
@Getter
@Setter
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "basket")

public class Basket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Double price;
    private String type;
    private String image;





}
